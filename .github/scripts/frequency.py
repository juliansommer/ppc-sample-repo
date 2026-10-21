import sys
from collections import Counter


def count_vowels(file_path):
    try:
        with open(file_path, "r") as file:
            text = file.read().lower()
    except FileNotFoundError:
        print(f"Error: {file_path} not found")
        sys.exit(1)

    counts = Counter(char for char in text if char in "aeiou")
    return {vowel: counts.get(vowel, 0) for vowel in "aeiou"}


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file_path>")
        sys.exit(1)

    print(count_vowels(sys.argv[1]))
