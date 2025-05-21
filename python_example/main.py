import math
from datetime import datetime, timedelta
import humanize

def main():
    now = datetime.now()
    earlier = now - timedelta(hours=3, minutes=15)

    print(f"Current time: {now}")
    print("Something happened:", humanize.naturaltime(now - earlier))

    x = 42
    print(f"Square root of {x} is {math.sqrt(x)}")

if __name__ == "__main__":
    main()