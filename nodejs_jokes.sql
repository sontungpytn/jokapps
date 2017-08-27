-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 27, 2017 lúc 05:53 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nodejs_jokes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `guess` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `parent_id`, `guess`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'aaaa', 0, NULL, 1, 1, '2017-08-13 10:31:20', '2017-08-13 10:31:20'),
(2, 'hello', 0, NULL, 2, 1, '2017-08-13 11:31:49', '2017-08-13 11:31:49'),
(3, 'aaaasdas', 0, 'noreply@gmail.com', NULL, 1, '2017-08-13 11:32:02', '2017-08-13 11:32:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_09_151513_create_posts_table', 1),
(4, '2017_08_09_151549_create_comments_table', 1),
(5, '2017_08_09_151608_create_rates_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `user_id`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Title 1', '<p>This is content</p>', 'title-1', 1, 'Title 1', 'This is content', '2017-08-13 10:16:45', '2017-08-13 10:16:45'),
(2, 'Title 2', '<p>This is content</p>', 'title-2', 2, 'Title 2', 'This is content', '2017-08-13 10:41:48', '2017-08-13 10:41:48'),
(761, 'A Bear Walks Into a Bar...', '<p>A bear walks into a bar and says to the bartender, &quot;I&apos;ll have a pint of beer and a.......... packet of peanuts.&quot;  </p><p> The bartender asks, &quot;Why the big pause?&quot; </p><p></p>', 'a-bear-walks-into-a-bar---', 1, NULL, 'A Bear Walks Into a Bar...', '2017-08-27 15:42:08', '2017-08-27 15:42:08'),
(762, 'A Grasshopper Walks Into a Bar...', '<p>A grasshopper walks into a bar, and the bartender says, &quot;Hey, we have a drink named after you!&quot;     </p><p> The grasshopper looks surprised and asks, &quot;You have a drink named Steve?&quot;</p><p></p>', 'a-grasshopper-walks-into-a-bar---', 1, NULL, 'A Grasshopper Walks Into a Bar...', '2017-08-27 15:42:10', '2017-08-27 15:42:10'),
(763, 'A Gummy Problem', '<p>Q: Why did the chewing gum cross the road?  </p><p>A: He was stuck to the chicken&apos;s foot. </p><p></p>', 'a-gummy-problem', 1, NULL, 'A Gummy Problem', '2017-08-27 15:42:11', '2017-08-27 15:42:11'),
(764, 'A Kangaroo Walks Into a Bar...', '<p>A kangaroo walks into a bar and tells the bartender, &quot;Blood is the lipstick of all wounds.&quot;  </p><p>The bartender does not know how he said this or why. </p><p></p>', 'a-kangaroo-walks-into-a-bar---', 1, NULL, 'A Kangaroo Walks Into a Bar...', '2017-08-27 15:42:12', '2017-08-27 15:42:12'),
(765, 'A man and his pet giraffe walk into a bar...', '<p>A man and his pet giraffe walk into a bar and start drinking. As the night goes on, they get  drunk, and the giraffe finally passes out. The  man decides to go home.   </p><p> As he&apos;s leaving, the man is approached by the barkeeper who says, &quot;Hey, you&apos;re not gonna leave that lyin&apos; here, are ya?&quot;   </p><p> &quot;Hmph,&quot; says the man. &quot;That&apos;s not a lion -- it&apos;s a giraffe.&quot; </p><p></p>', 'a-man-and-his-pet-giraffe-walk-into-a-bar---', 1, NULL, 'A man and his pet giraffe walk into a bar...', '2017-08-27 15:42:14', '2017-08-27 15:42:14'),
(766, 'A Piece of Advice', '<p>Never play leapfrog with a unicorn.</p>', 'a-piece-of-advice', 1, NULL, 'A Piece of Advice', '2017-08-27 15:42:15', '2017-08-27 15:42:15'),
(767, 'A Sack Full of Chickens', '<p>Two rednecks walk down a dirt path. One man has a big sack over his shoulder. The other man asks what&apos;s in the sack.<br><br>The first man says, &quot;I got me some chickens for dinner tonight.&quot;<br><br>The other man asks how many chickens are in the sack.<br><br>&quot;Well, I&apos;ll tell you,&quot; replies the first redneck, &quot;If you can guess how many chickens I got in this here sack, I&apos;ll give them both to you.&quot;</p>', 'a-sack-full-of-chickens', 1, NULL, 'A Sack Full of Chickens', '2017-08-27 15:42:17', '2017-08-27 15:42:17'),
(768, 'A Woman\'s Four Favorite Animals', '<p>Q: What are a woman&apos;s four favorite animals?</p><p>A: A mink in the closet, a Jaguar in the garage, a tiger in the bedroom and an ass to pay for it all. </p><p></p>', 'a-woman-s-four-favorite-animals', 1, NULL, 'A Woman\'s Four Favorite Animals', '2017-08-27 15:42:18', '2017-08-27 15:42:18'),
(769, 'A.J. Jamal: Free Cats', '<p>Cats are cool because you don&apos;t have to buy them. You see them on the street, take them home -- they&apos;re yours. You ain&apos;t never seen a cat being bought out of a pet store. They just sit in the pet store. They&apos;re under there like, &apos;Meow,&apos; and you be looking at them like, &apos;Oh they&apos;re so cute. Let&apos;s go find one like that.&apos;</p>', 'a-j--jamal--free-cats', 1, NULL, 'A.J. Jamal: Free Cats', '2017-08-27 15:42:20', '2017-08-27 15:42:20'),
(770, 'Adam Ferrara: Look to Nature', '<p>I look to nature because I think the animals are smarter than we are. Animals mate; humans date. There&apos;s no dating in the animal kingdom. No dinner, no movie -- just a quick sniff, &apos;Alright, let&apos;s go.&apos;</p>', 'adam-ferrara--look-to-nature', 1, NULL, 'Adam Ferrara: Look to Nature', '2017-08-27 15:42:21', '2017-08-27 15:42:21'),
(771, 'Amanda Melson: Take Back the Field', '<p>I read that, apparently, 13% of young men living in rural America lose their virginity to livestock. That is not right -- those poor cows. I&apos;m thinking of starting the first annual &apos;Take Back the Field&apos; rally. I&apos;ve got some slogans for the cows, like, &apos;Moo Means No!&apos; Or, &apos;Hey, stop treating us like women and start treating us like pieces of meat!&apos;</p>', 'amanda-melson--take-back-the-field', 1, NULL, 'Amanda Melson: Take Back the Field', '2017-08-27 15:42:22', '2017-08-27 15:42:22'),
(772, 'An elderly lady phoned her telephone company', '<p></p><p>An elderly lady phoned her telephone company to report that her telephone failed to ring when her friends called - and that on the few occasions when it did ring, her pet dog always moaned right before the phone rang. The telephone repairman proceeded to the scene, curious to see this psychic dog or senile elderly lady. </p><p> He climbed a nearby telephone pole, hooked in his test set, and dialed the subscriber&apos;s house. The phone didn&apos;t ring right away, but then the dog moaned loudly and the telephone began to ring. </p><p> Climbing down from the pole, the telephone repairman found: </p><p> 1. The dog was tied to the telephone system&apos;s ground wire via a steel chain and collar. <br> 2. The wire connection to the ground rod was loose.<br> 3. The dog was receiving 90 volts of signaling current when the phone number was called.<br> 4. After a couple of such jolts, the dog would start moaning and then urinate on himself and the ground.<br> 5. The wet ground would complete the circuit, thus causing the phone  to ring.<br> </p><p> Which demonstrates that some problems CAN be fixed by pissing and  moaning.</p><p></p>', 'an-elderly-lady-phoned-her-telephone-company', 1, NULL, 'An elderly lady phoned her telephone company', '2017-08-27 15:42:24', '2017-08-27 15:42:24'),
(773, 'Andrew Norelli: Wrong Time to Worry', '<p>People worry about health at the wrong times, you ever notice that? &apos;Ooh, there&apos;s a hair in my food.&apos; You&apos;re eating bacon -- there&apos;s a pig&apos;s ass in your food.</p>', 'andrew-norelli--wrong-time-to-worry', 1, NULL, 'Andrew Norelli: Wrong Time to Worry', '2017-08-27 15:42:25', '2017-08-27 15:42:25'),
(774, 'Andy Kindler: Worry Wildlife', '<p>They had a sign, and it said, &apos;Do not allow your dog to chase, injury or worry wildlife.&apos; I understand the chasing and injuring part, but how is a dog going to &apos;worry&apos; wildlife? Dog&apos;s going to run up to a bird: &apos;Hey, I think you&apos;ve got something on your beak. It could be a tumor.&apos;</p>', 'andy-kindler--worry-wildlife', 1, NULL, 'Andy Kindler: Worry Wildlife', '2017-08-27 15:42:27', '2017-08-27 15:42:27'),
(775, 'Animal Lives', '<p>Q: What has more lives than a cat?</p><p>A: A frog -- it croaks every night. </p><p></p>', 'animal-lives', 1, NULL, 'Animal Lives', '2017-08-27 15:42:28', '2017-08-27 15:42:28'),
(776, 'Animal Rotation', '<p>Q: What animal rotates at least 200 times after it dies?</p><p>A: A rotisserie chicken. </p><p></p>', 'animal-rotation', 1, NULL, 'Animal Rotation', '2017-08-27 15:42:30', '2017-08-27 15:42:30'),
(777, 'Another Bull Name', '<p>Q: What do you call a masturbating bull? </p><p>A: Beef Strokinoff. </p><p></p>', 'another-bull-name', 1, NULL, 'Another Bull Name', '2017-08-27 15:42:30', '2017-08-27 15:42:30'),
(778, 'Another Chicken, Another Road', '<p>Q: Why did the stoner cross the road?     </p><p> A: Who else would follow a chicken? </p><p></p>', 'another-chicken--another-road', 1, NULL, 'Another Chicken, Another Road', '2017-08-27 15:42:32', '2017-08-27 15:42:32'),
(779, 'Ants Dancing', '<p>Q: Why did the ants dance on the jam jar?</p><p>A: The lid said, &quot;Twist to open.&quot;</p><p></p>', 'ants-dancing', 1, NULL, 'Ants Dancing', '2017-08-27 15:42:33', '2017-08-27 15:42:33'),
(780, 'Ants in Your Pants', '<p>Q: Why did the ant fall off the toilet bowl?  </p><p>A: He got pissed off.</p><p></p>', 'ants-in-your-pants', 1, NULL, 'Ants in Your Pants', '2017-08-27 15:42:35', '2017-08-27 15:42:35'),
(781, 'Apple & Worm', '<p>Q: What did the apple say to the worm? </p><p>A: You&apos;re boring me. </p><p></p>', 'apple---worm', 1, NULL, 'Apple & Worm', '2017-08-27 15:42:36', '2017-08-27 15:42:36'),
(782, 'Ardal O\'Hanlon: Drug Smuggling With Dogs', '<p>The best way to smuggle drugs into a country is to place them carefully in a dog&apos;s bottom... because at the airport, if the sniffer dog suspects anything, the officials will think they&apos;re just being frisky... unless of course your dog wears sunglasses and sweats a lot.</p>', 'ardal-o-hanlon--drug-smuggling-with-dogs', 1, NULL, 'Ardal O\'Hanlon: Drug Smuggling With Dogs', '2017-08-27 15:42:38', '2017-08-27 15:42:38'),
(783, 'Arj Barker: Guess What, Cat?', '<p>I know that most domesticated animals aren&apos;t indigenous to this country. So guess what, cat? You can beat it. Go back to Catalina Island or Catalonia, Spain, or Katmandu, or wherever the hell your hairy ass is from! &apos;Cause this is America and around here - Katmandon&apos;t.</p>', 'arj-barker--guess-what--cat-', 1, NULL, 'Arj Barker: Guess What, Cat?', '2017-08-27 15:42:40', '2017-08-27 15:42:40'),
(784, 'At the Door', '<p>Q: If your wife is shouting at the front door and your dog is barking at the back door, who do you let in first?</p><p>A: The dog -- at least he&apos;ll quiet down after you let him in. </p><p></p>', 'at-the-door', 1, NULL, 'At the Door', '2017-08-27 15:42:41', '2017-08-27 15:42:41'),
(785, 'Aziz Ansari: Senator Cornyn on Same-Sex Marriage', '<p>I&apos;m not making this up -- he goes &apos;Now if your neighbor marries a box turtle, that doesn&apos;t affect your everyday life. But that doesn&apos;t mean it&apos;s right.&apos; I think it&apos;s pretty safe to assume that, at one point or another, Senator John Cornyn has thought about making love to a box turtle. I&apos;m sorry, but that&apos;s not the first animal you jump to when you&apos;re writing that analogy.</p>', 'aziz-ansari--senator-cornyn-on-same-sex-marriage', 1, NULL, 'Aziz Ansari: Senator Cornyn on Same-Sex Marriage', '2017-08-27 15:42:43', '2017-08-27 15:42:43'),
(786, 'Ba Ba Black Sheep', '<p>Clem pulled over the car by the side of the road and showed Jed where he&apos;d first had sex. </p><p> &quot;It was right down there by that tree. I remember the day plainly. It was a warm summer day. She and I were so much in love. We walked down to the tree and made love for hours,&quot; Clem recalled. </p><p> &quot;That sounds wonderful,&quot; said Jed. </p><p> &quot;Yes. It was okay until I looked up and noticed her mother was standing right there watching us.&quot; </p><p> &quot;Oh my God! What did her mother say when she saw you making love to her daughter?&quot; </p><p> &quot;Baaaaa...&quot;</p>', 'ba-ba-black-sheep', 1, NULL, 'Ba Ba Black Sheep', '2017-08-27 15:42:44', '2017-08-27 15:42:44'),
(787, 'Bald Fleas', '<p>Q; What do you call two fleas on top of a bald head? </p><p> A: Homeless. </p><p></p>', 'bald-fleas', 1, NULL, 'Bald Fleas', '2017-08-27 15:42:46', '2017-08-27 15:42:46'),
(788, 'Basketball Chicken', '<p>Q: Why did the chicken cross the basketball court?       </p><p>A: He heard the ref was blowing fowls.</p><p></p>', 'basketball-chicken', 1, NULL, 'Basketball Chicken', '2017-08-27 15:42:47', '2017-08-27 15:42:47'),
(789, 'Bear & Deer', '<p>Q: What do you get when you cross a bear with a deer?  </p><p>A: Beer.</p><p></p>', 'bear---deer', 1, NULL, 'Bear & Deer', '2017-08-27 15:42:49', '2017-08-27 15:42:49'),
(790, 'Bear & Toilet', '<p>Q: What do you get if you cross a bear with a toilet? </p><p>A: Winnie the Pooh. </p><p></p>', 'bear---toilet', 1, NULL, 'Bear & Toilet', '2017-08-27 15:42:50', '2017-08-27 15:42:50'),
(791, 'Bear on a Rampage', '<p>A bear jumps out of a bush and starts chasing two hikes. They both start running for their lives, but then one of them stops to put on his running shoes.  </p><p> His friends says, &quot;What are you doing? You can&apos;t outrun a bear!&quot;  </p><p> His friend replies, &quot;I don&apos;t have to outrun the bear; I only have to outrun you!&quot; </p><p></p>', 'bear-on-a-rampage', 1, NULL, 'Bear on a Rampage', '2017-08-27 15:42:51', '2017-08-27 15:42:51'),
(792, 'Bee Pee', '<p>Q: Where does a bee pee?  </p><p> A: At the BP station. </p><p></p>', 'bee-pee', 1, NULL, 'Bee Pee', '2017-08-27 15:42:53', '2017-08-27 15:42:53'),
(793, 'Beer Nuts vs. Deer Nuts', '<p>Q: What&apos;s the difference between beer nuts and deer nuts?</p><p>A: Beer nuts are $1.39, and deer nuts are under a buck. </p><p></p>', 'beer-nuts-vs--deer-nuts', 1, NULL, 'Beer Nuts vs. Deer Nuts', '2017-08-27 15:42:54', '2017-08-27 15:42:54'),
(794, 'Beethoven\'s Chicken', '<p>Q: Why did Beethoven kill his chicken?  </p><p>A: It kept saying, &quot;Bach, Bach, Bach.&quot;</p><p></p>', 'beethoven-s-chicken', 1, NULL, 'Beethoven\'s Chicken', '2017-08-27 15:42:56', '2017-08-27 15:42:56'),
(795, 'Bells on Cows', '<p>Q: Why do farmers put bells on cows?        </p><p> A: Their horns don&apos;t work. </p><p></p>', 'bells-on-cows', 1, NULL, 'Bells on Cows', '2017-08-27 15:42:57', '2017-08-27 15:42:57'),
(796, 'Best Goldfish Joke Ever', '<p>Two goldfish were in their tank. One turned to the other and said, &quot;You man the guns; I&apos;ll drive.&quot;</p>', 'best-goldfish-joke-ever', 1, NULL, 'Best Goldfish Joke Ever', '2017-08-27 15:42:58', '2017-08-27 15:42:58'),
(797, 'Big Noses', '<p>Q: Why do gorillas have big noses?  </p><p> A: Because they have big fingers. </p><p></p>', 'big-noses', 1, NULL, 'Big Noses', '2017-08-27 15:43:00', '2017-08-27 15:43:00'),
(798, 'Bill Coronel: Dog Food Guideline', '<p>I don&apos;t eat food that a dog won&apos;t touch. That&apos;s my guideline. Try to give tofu to a dog. He goes, &apos;I don&apos;t think so. No.&apos; It&apos;s a dog. It licks between its legs and sniffs fire hydrants. If he doesn&apos;t like something, I go with that opinion. He&apos;s drinking out of the toilet. Find out what he thinks.</p>', 'bill-coronel--dog-food-guideline', 1, NULL, 'Bill Coronel: Dog Food Guideline', '2017-08-27 15:43:02', '2017-08-27 15:43:02'),
(799, 'Bill Dwyer: Petting Zoo', '<p>The petting zoo&apos;s a great place to go if you want to discard your child&apos;s clothing in a goat&apos;s stomach.</p>', 'bill-dwyer--petting-zoo', 1, NULL, 'Bill Dwyer: Petting Zoo', '2017-08-27 15:43:03', '2017-08-27 15:43:03'),
(800, 'Bill Dwyer: Why Kids?', '<p>We have kids because we didn&apos;t want pets.</p>', 'bill-dwyer--why-kids-', 1, NULL, 'Bill Dwyer: Why Kids?', '2017-08-27 15:43:05', '2017-08-27 15:43:05'),
(801, 'Bill Kirchenbauer: Sea World Seafood', '<p>The stupidest thing I noticed was a couple of weeks ago. I went to Sea World. Now, if you ever go to Sea World, take a minute to notice that they sell fish sandwiches at Sea World. What insensitive guy came up with this? It&apos;s like, if you&apos;re not doing a very good job as a fish, you can just get your little fish butt over to the restaurant.</p>', 'bill-kirchenbauer--sea-world-seafood', 1, NULL, 'Bill Kirchenbauer: Sea World Seafood', '2017-08-27 15:43:06', '2017-08-27 15:43:06'),
(802, 'Bird It Through the Grapevine', '<p>Did you hear about the man who did it with a parakeet? </p><p>He contracted chirpes. And the worst thing? It was untweetable.</p><p></p>', 'bird-it-through-the-grapevine', 1, NULL, 'Bird It Through the Grapevine', '2017-08-27 15:43:08', '2017-08-27 15:43:08'),
(803, 'Bird of Peace, Bird of Love', '<p>Q: If the dove is the bird of peace, what is the bird of true love?</p><p>A: The swallow. </p><p></p>', 'bird-of-peace--bird-of-love', 1, NULL, 'Bird of Peace, Bird of Love', '2017-08-27 15:43:09', '2017-08-27 15:43:09'),
(804, 'Birdie Poem', '<p>Birdie, birdie, in the sky<br>   Dropped some white stuff in my eye,<br> I&apos;m a big girl, I won&apos;t cry,<br>  I&apos;m just  glad that cows don&apos;t fly.</p>', 'birdie-poem', 1, NULL, 'Birdie Poem', '2017-08-27 15:43:11', '2017-08-27 15:43:11'),
(805, 'Birdman', '<p>Little girl: &quot;Why does your son  say, &apos;Cluck, cluck, cluck?&apos;&quot; </p><p> Mother: &quot;Because he thinks he&apos;s a chicken.&quot; </p><p> Little girl: &quot;Why don&apos;t you tell him he&apos;s not a chicken?&quot;  </p><p> Mother: &quot;We need the eggs.&quot; </p><p></p>', 'birdman', 1, NULL, 'Birdman', '2017-08-27 15:43:12', '2017-08-27 15:43:12'),
(806, 'Birds of Paradise', '<p>Yo&apos; mama so fat, when she was a baby, she took a bath with a rubber albatross.</p>', 'birds-of-paradise', 1, NULL, 'Birds of Paradise', '2017-08-27 15:43:14', '2017-08-27 15:43:14'),
(807, 'Black & White & Red', '<p>Q: What&apos;s black and white and red all over?     </p><p> A: An embarassed zebra!</p><p></p>', 'black---white---red', 1, NULL, 'Black & White & Red', '2017-08-27 15:43:16', '2017-08-27 15:43:16'),
(808, 'Black and Brown', '<p>Q: What&apos;s black and brown and looks good on a lawyer?<br><br>A: A Doberman pinscher.<br></p>', 'black-and-brown', 1, NULL, 'Black and Brown', '2017-08-27 15:43:17', '2017-08-27 15:43:17'),
(809, 'Blind Bunny Meets Blind Snake', '<p>A blind bunny and a blind snake bump into each other on the path.<br><br>&quot;What kind of animal are you?&quot; asks the snake.<br><br>&quot;I really don&apos;t know,&quot; says the bunny. &quot;I&apos;ve never seen myself. Maybe you could examine me and find out?&quot;<br><br>So, the snake felt the bunny. &quot;Well, you&apos;re soft and cuddly,&quot; said the snake. &quot;You have long silky ears and a little fluffy tail. You must be a bunny!&quot;<br><br>&quot;Awesome!&quot; says the bunny. &quot;Now what kind of animal are you?&quot;<br><br>&quot;I really don&apos;t know,&quot; says the snake. &quot;I&apos;ve never seen myself. Maybe you could examine me and find out?&quot;<br><br>So, the bunny feels the snake all over, and he replies, &quot;You&apos;re hard and cold, and you haven&apos;t got any balls. You must be a lawyer!&quot;</p>', 'blind-bunny-meets-blind-snake', 1, NULL, 'Blind Bunny Meets Blind Snake', '2017-08-27 15:43:19', '2017-08-27 15:43:19'),
(810, 'Blind Dinosaur', '<p>Q: What do you call a blind dinosaur? </p><p>A: Do-you-think-he-saur-us.</p><p></p>', 'blind-dinosaur', 1, NULL, 'Blind Dinosaur', '2017-08-27 15:43:20', '2017-08-27 15:43:20'),
(811, 'Blind Skydivers', '<p>Q: Why don&apos;t blind people skydive?</p><p>A: It scares the crap out of their seeing-eye dogs. </p><p></p>', 'blind-skydivers', 1, NULL, 'Blind Skydivers', '2017-08-27 15:43:21', '2017-08-27 15:43:21'),
(812, 'Blond Dog', '<p>Q: Why does a blond dog have lumps on his head?   </p><p> A: He&apos;s been chasing parked cars.</p>', 'blond-dog', 1, NULL, 'Blond Dog', '2017-08-27 15:43:23', '2017-08-27 15:43:23'),
(813, 'Blonde & Goldfish', '<p>A blonde bought some goldfish, but she did not know how to feed them. She called her brunette friend for help. Once they were done feeding them, the blonde said, &apos;&apos;Now, what do I give them to drink?&apos;&apos;</p>', 'blonde---goldfish', 1, NULL, 'Blonde & Goldfish', '2017-08-27 15:43:24', '2017-08-27 15:43:24'),
(814, 'Blonde Counting Sheep', '<p>Once there was a blonde driving home from work when she saw a sheep farm. She stops and asks the farmer if she can have a sheep. The farmer says &quot;If you can count all my sheep I&apos;ll let you have any one you want.&quot; The blonde looks around her for a moment and says, &quot;You have 356 sheep.&quot; The farmer exclaims, &quot;Wow -- you&apos;re exactly right. I guess blondes really aren&apos;t dumb. Now go pick yourself out a sheep.&quot;  </p><p> The blonde makes her choice, picks it up, comes back to the farmer to thank him. &quot;Oh no,&quot; he says, &quot;you can&apos;t have that one.&quot; &quot;Why not?&quot; asks the blonde, &quot;you said I could have any sheep I wanted.&quot; And the farmer says, &quot;Ma&apos;am, that&apos;s my dog.&quot;</p>', 'blonde-counting-sheep', 1, NULL, 'Blonde Counting Sheep', '2017-08-27 15:43:26', '2017-08-27 15:43:26'),
(815, 'Blonde in Disguise', '<p>Tired of constant blonde jokes, a blonde dyes her hair brown. She goes for a drive in the country and sees a shepherd herding his sheep across the road.</p><p>&quot;Hey, shepherd, if I guess how many sheep are here, can I keep one?&quot; she asks. </p><p>The shepherd agrees. She blurts out, &quot;352!&quot;</p><p>The shepherd is stunned but keeps his word and allows her to pick a sheep.</p><p>&quot;I&apos;ll take this one,&quot; she says proudly. &quot;It&apos;s the cutest!&quot;</p><p>&quot;Hey lady,&quot; says the shepherd. &quot;If I guess your real hair color, can I have my dog back?&quot; </p><p></p>', 'blonde-in-disguise', 1, NULL, 'Blonde in Disguise', '2017-08-27 15:43:27', '2017-08-27 15:43:27'),
(816, 'Blonde NASA Engineer', '<p>NASA sends a space shuttle up with two pigs and a blonde on board. While the shuttle is taking off, the NASA command center calls the first pig and asks, &quot;Pig  #1, do you know your mission?&quot; </p><p> The pig replies, &quot;Oink oink. Get the shuttle into orbit and launch the trillion dollar satellite. Oink oink.&quot;  </p><p> Then NASA asks the second pig, &quot;Pig #2, do you know your mission?&quot;  </p><p> The second pig replies, &quot;Oink oink.  Once Pig #1 has completed the trillion dollar satellite launch, close hatch and go back to Earth.  Land shuttle. Oink oink.&quot;  </p><p> Then NASA asks the blonde, &quot;Blonde woman, do you know your mission?&quot;  </p><p> The blonde woman replies, &quot;Um. Oh yeah, I remember now. &apos;Feed the pigs -- and don&apos;t touch a thing!&apos;&quot; </p><p></p>', 'blonde-nasa-engineer', 1, NULL, 'Blonde NASA Engineer', '2017-08-27 15:43:28', '2017-08-27 15:43:28'),
(817, 'Blossom & Porky', '<p>An old lady meets a little girl in the park with her dog. She asks, &quot;What&apos;s your name, little girl?&quot;</p><p>&quot;Blossom,&quot; answers the girl.</p><p>&quot;Oh, that&apos;s a beautiful name. How did you get it?&quot;</p><p>The little girl explained, &quot;Well, my mommy was pregnant, and a blossom fell out of a tree and landed right on her tummy, so she named me Blossom.&quot;</p><p>&quot;Oh, that&apos;s so nice, replied the old lady. &quot;What&apos;s your dog&apos;s name?&quot;</p><p>&quot;Porky,&quot; the little girl answered.</p><p>&quot;Why Porky?&quot; the old lady asked. </p><p>The little girl answered, &quot;Because he f**ks pigs.&quot; </p><p></p>', 'blossom---porky', 1, NULL, 'Blossom & Porky', '2017-08-27 15:43:29', '2017-08-27 15:43:29'),
(818, 'Bob Marley: Atkins Diet', '<p>I thought I&apos;d like this thing because I like meat. Three days into it, I had eaten so much meat, I was perusing the neighborhood at four in the morning looking for cats and stuff. My heart was beating a million miles a minute. I&apos;ve got bacon fat dripping off my eyelashes. People are like, &apos;Hey, you look pretty good. Did you lose some weight?&apos; &apos;Get over here. I&apos;ll eat your face right off your head.&apos;</p>', 'bob-marley--atkins-diet', 1, NULL, 'Bob Marley: Atkins Diet', '2017-08-27 15:43:31', '2017-08-27 15:43:31'),
(819, 'Bob Nickman: Strobe Headlines', '<p>Put strobe headlights in my car to make the deer run slower.</p>', 'bob-nickman--strobe-headlines', 1, NULL, 'Bob Nickman: Strobe Headlines', '2017-08-27 15:43:32', '2017-08-27 15:43:32'),
(820, 'Bonnie McFarlane: Hunting Dog', '<p>I love my hunting dog. I <i>loved&lt;\\i&gt; my hunting dog -- I&apos;m not very good at hunting.</i></p><i>         </i>', 'bonnie-mcfarlane--hunting-dog', 1, NULL, 'Bonnie McFarlane: Hunting Dog', '2017-08-27 15:43:34', '2017-08-27 15:43:34'),
(821, 'Bovine Hijinx', '<p>Q; What do cows do for fun?</p><p> A: They go to the moo-vies!</p>', 'bovine-hijinx', 1, NULL, 'Bovine Hijinx', '2017-08-27 15:43:36', '2017-08-27 15:43:36'),
(822, 'Brave Pig With the Peg Leg', '<p>A tourist on a farm asked the farmer why one pig had a wooden leg.<br><br>The farmer said, &quot;That pig is the bravest pig I ever saw.&quot;<br><br>&quot;So why does he have a wooden leg?&quot; the tourist asked.<br><br>&quot;One night, our house caught on fire, and he came inside and woke us all up.&quot;<br><br>The tourist asked again, &quot;So, why does that pig have a wooden leg?&quot;<br><br>&quot;You can&apos;t eat a pig that brave all at once!&quot;</p>', 'brave-pig-with-the-peg-leg', 1, NULL, 'Brave Pig With the Peg Leg', '2017-08-27 15:43:37', '2017-08-27 15:43:37'),
(823, 'Brian Kiley: Shot an Elk', '<p>I went hunting for the first time. I shot an elk. I felt really bad at first, but the guy was wearing a plaid leisure suit.</p>', 'brian-kiley--shot-an-elk', 1, NULL, 'Brian Kiley: Shot an Elk', '2017-08-27 15:43:39', '2017-08-27 15:43:39'),
(824, 'Broken Cage', '<p>Q: What did the bird say after his cage fell apart? </p><p>A: &quot;Cheap, cheap!&quot;</p><p></p>', 'broken-cage', 1, NULL, 'Broken Cage', '2017-08-27 15:43:40', '2017-08-27 15:43:40'),
(825, 'Bruce Baum: Elliot\'s Peripheral Extrapolation Theorem', '<p>You guys familiar with Elliot&apos;s Peripheral Extrapolation Theorem? That&apos;s the one that states that depending on the size of an enclosure, i.e. an aquarium or terrarium, that the animal, i.e. fish or lizard, that you put in that area will grow depending on the size and the room it has to grow in. And based on that, I&apos;ve been wearing some very large underwear.</p>', 'bruce-baum--elliot-s-peripheral-extrapolation-theorem', 1, NULL, 'Bruce Baum: Elliot\'s Peripheral Extrapolation Theorem', '2017-08-27 15:43:42', '2017-08-27 15:43:42'),
(826, 'Bug\'s Mind', '<p>Q: What is the last thing to go through a bug&apos;s mind when it hits your windshield?    <br><br>A: Its ass.</p>', 'bug-s-mind', 1, NULL, 'Bug\'s Mind', '2017-08-27 15:43:43', '2017-08-27 15:43:43'),
(827, 'Busy Redneck', '<p>Q: What do you call a redneck with a pig under one arm and a sheep under the other?<br><br>A: Bisexual.</p>', 'busy-redneck', 1, NULL, 'Busy Redneck', '2017-08-27 15:43:45', '2017-08-27 15:43:45'),
(828, 'Careful What You Kick', '<p>A boy asks his mother for breakfast. She says, &quot;Not until you feed the animals.&quot;<br><br>The boy goes outside and says to the chicken, &quot;I don&apos;t feel like feeding you today.&quot; So he kicks the chicken. He does the same with the cow and the pig.<br><br> The boy goes back into the house and tells his mother that he&apos;s hungry. His mother says, &quot;I saw you kick the chicken, so you&apos;re not getting any eggs, I saw you kick the cow, so you&apos;re not getting any milk, and I saw kick the pig, so you&apos;re not getting any bacon.&quot;<br><br>Just then the boy&apos;s father walks down the steps, trips and kicks the cat. The boy says, &quot;Mom, should I tell him?&quot;</p>', 'careful-what-you-kick', 1, NULL, 'Careful What You Kick', '2017-08-27 15:43:46', '2017-08-27 15:43:46'),
(829, 'Carrots', '<p>Q: How do you know that carrots are good for your eyesight?</p><p> A: Have you ever seen a rabbit with glasses? </p><p></p>', 'carrots', 1, NULL, 'Carrots', '2017-08-27 15:43:48', '2017-08-27 15:43:48'),
(830, 'Cash Levy: Lions', '<p>Lions sleep 85% of their day, have sex up to 55 times a day. That&apos;s what we should be shooting for. I would love to get that much sleep.</p>', 'cash-levy--lions', 1, NULL, 'Cash Levy: Lions', '2017-08-27 15:43:49', '2017-08-27 15:43:49'),
(831, 'Cash Levy: Wild Stallion', '<p>When my last girlfriend wanted to get a little serious, I had to use the old wild stallion technique to get her back in. I said, &apos;Baby, I&apos;m like a wild stallion. You try to put a saddle on a wild stallion, he&apos;ll run and he&apos;ll run and run some more. But if you let a wild stallion run free, hey may come back to the barn.&apos; Yeah, she didn&apos;t buy it either.</p>', 'cash-levy--wild-stallion', 1, NULL, 'Cash Levy: Wild Stallion', '2017-08-27 15:43:51', '2017-08-27 15:43:51'),
(832, 'Cat Hospital', '<p>Q: Why did the cat go to the hospital?  </p><p> A: To have a  CAT scan done. </p><p></p>', 'cat-hospital', 1, NULL, 'Cat Hospital', '2017-08-27 15:43:53', '2017-08-27 15:43:53'),
(833, 'Catching a Polar Bear', '<p>Q: How do you catch a polar bear?</p><p>A: You make a hole in the ice and line it with peas.  When the bear goes in to take a pea, you kick him in the ice hole.</p><p></p>', 'catching-a-polar-bear', 1, NULL, 'Catching a Polar Bear', '2017-08-27 15:43:54', '2017-08-27 15:43:54'),
(834, 'Catching a Squirrel', '<p>Q: How do you catch a squirrel? </p><p>   A: Climb up a tree and act like a nut. </p><p></p>', 'catching-a-squirrel', 1, NULL, 'Catching a Squirrel', '2017-08-27 15:43:56', '2017-08-27 15:43:56'),
(835, 'Catching Rabbits', '<p>Q: How do you catch a unique rabbit? </p><p>  A: Unique up on it. </p><p> Q: How do you catch a tame rabbit? </p><p>   A: Tame way. </p><p></p>', 'catching-rabbits', 1, NULL, 'Catching Rabbits', '2017-08-27 15:43:57', '2017-08-27 15:43:57'),
(836, 'Catfish and Lawyers', '<p>Q: What&apos;s the difference between a catfish and a lawyer?<br><br>A: One&apos;s a slimy scum-sucking bottom-dwelling scavenger; the other is a fish.</p>', 'catfish-and-lawyers', 1, NULL, 'Catfish and Lawyers', '2017-08-27 15:43:59', '2017-08-27 15:43:59'),
(837, 'Cathy Ladman: Deer in Headlights', '<p>My father drives so slowly. When deer see my father&apos;s car approaching, they linger.</p>', 'cathy-ladman--deer-in-headlights', 1, NULL, 'Cathy Ladman: Deer in Headlights', '2017-08-27 15:44:00', '2017-08-27 15:44:00'),
(838, 'Caught and Tagged', '<p>An old lady buys a pair of parrots, but she cannot identify their sexes. She spends weeks staring at their cage and eventually, she catches them doing what comes naturally. To make sure she doesn&apos;t get them mixed up again, she puts a little white collar around the male parrot&apos;s neck.</p><p>Later, the local priest visits the old lady. The male parrot takes one look at the father&apos;s collar and says, &quot;I see she caught you at it, too.&quot; </p><p></p>', 'caught-and-tagged', 1, NULL, 'Caught and Tagged', '2017-08-27 15:44:02', '2017-08-27 15:44:02'),
(839, 'Centipede & Parrot', '<p>Q: What do you get when you cross a centipide with a parrot?    </p><p> A: A walkie-talkie. </p><p></p>', 'centipede---parrot', 1, NULL, 'Centipede & Parrot', '2017-08-27 15:44:03', '2017-08-27 15:44:03'),
(840, 'Charging Elephant', '<p>Q: How do you stop an elephant from charging?       </p><p> A: Take away his credit card. </p><p></p>', 'charging-elephant', 1, NULL, 'Charging Elephant', '2017-08-27 15:44:05', '2017-08-27 15:44:05'),
(841, 'Charles Van Deventer: My Dog, Bill Clinton', '<p>I have a dog, you know? And I couldn&apos;t even figure out what to name him, so I named him Bill Clinton. That way I could just blame him for stuff, you know? &apos;Who knocked over the garbage?&apos; &apos;Bill Clinton.&apos; &apos;Who chewed up my work?&apos; &apos;Oh, Bill Clinton.&apos; &apos;Who soiled this perfectly good dress?&apos; &apos;Bill Clinton.&apos;</p>', 'charles-van-deventer--my-dog--bill-clinton', 1, NULL, 'Charles Van Deventer: My Dog, Bill Clinton', '2017-08-27 15:44:06', '2017-08-27 15:44:06'),
(842, 'Charlie Murphy: The Dog Whisperer Technique', '<p>Started watching every episode and, eventually, from me watching it over and over and over and over again, I peeped his training technique. Oh yeah. He comes over your house and he strangles your dog.</p>', 'charlie-murphy--the-dog-whisperer-technique', 1, NULL, 'Charlie Murphy: The Dog Whisperer Technique', '2017-08-27 15:44:08', '2017-08-27 15:44:08'),
(843, 'Chicken Chat', '<p>Q: Why did the chicken say, &quot;Meow, oink, bow-wow, moo?&quot; </p><p> A: He was studying foreign languages. </p><p></p>', 'chicken-chat', 1, NULL, 'Chicken Chat', '2017-08-27 15:44:09', '2017-08-27 15:44:09'),
(844, 'Chicken Don\'t Wear Underwear', '<p>Q: Why don&apos;t chickens wear underwear?   </p><p>A: Because their peckers are on their faces! </p><p></p>', 'chicken-don-t-wear-underwear', 1, NULL, 'Chicken Don\'t Wear Underwear', '2017-08-27 15:44:11', '2017-08-27 15:44:11'),
(845, 'Chicken in the Dirt', '<p>Q: What do you call a chicken who crosses the road, rolls in dirt and comes back?</p><p> A: A dirty double-crosser. </p><p></p>', 'chicken-in-the-dirt', 1, NULL, 'Chicken in the Dirt', '2017-08-27 15:44:12', '2017-08-27 15:44:12'),
(846, 'Chicken in the Road', '<p>Q: Why did the chicken stop in the middle of the road? </p><p>  A: It wanted to lay it on the line. </p><p></p>', 'chicken-in-the-road', 1, NULL, 'Chicken in the Road', '2017-08-27 15:44:14', '2017-08-27 15:44:14'),
(847, 'Chicken on the Field', '<p>Q: Why did the chicken run onto the football field? </p><p> A: Because the umpire called a foul.</p><p></p>', 'chicken-on-the-field', 1, NULL, 'Chicken on the Field', '2017-08-27 15:44:15', '2017-08-27 15:44:15'),
(848, 'Childless Smokey the Bear', '<p>Q: Why didn&apos;t Smokey the Bear have cubs?</p><p>A: Every time his wife got hot, he stomped her out. </p><p></p>', 'childless-smokey-the-bear', 1, NULL, 'Childless Smokey the Bear', '2017-08-27 15:44:16', '2017-08-27 15:44:16'),
(849, 'Chris Hardwick: Full of Disease', '<p>Rats are just Ziploc bags full of disease.</p>', 'chris-hardwick--full-of-disease', 1, NULL, 'Chris Hardwick: Full of Disease', '2017-08-27 15:44:18', '2017-08-27 15:44:18'),
(850, 'Chris Hardwick: Humans and Chimps', '<p>Humans cannot produce viable offspring with our closest animal cousin: the chimpanzee. We cannot impregnate a chimp. So you know what that means? No condoms.</p>', 'chris-hardwick--humans-and-chimps', 1, NULL, 'Chris Hardwick: Humans and Chimps', '2017-08-27 15:44:19', '2017-08-27 15:44:19'),
(851, 'Christian Finnegan: Unfiltered Dog Brain', '<p>I love dogs because there&apos;s no filter mechanism between the dog&apos;s brain and its tail. There&apos;s no filter there. Like, if the dog is happy, the tail is wagging; if the tail is wagging, the dog is happy. There&apos;s no passive aggressive sh*t like humans, like, &apos;Oh this douchebag thinks I&apos;m happy to see him.&apos;</p>', 'christian-finnegan--unfiltered-dog-brain', 1, NULL, 'Christian Finnegan: Unfiltered Dog Brain', '2017-08-27 15:44:21', '2017-08-27 15:44:21'),
(852, 'Chucky at the Movies', '<p>An old farmer went to town to see a movie. The ticket agent asked, &quot;Sir, what&apos;s that on your shoulder?&quot;  </p><p> The old farmer said, &quot;That&apos;s my pet rooster Chucky, wherever I go, Chucky goes.&quot;  </p><p> &quot;I&apos;m sorry sir.&quot;, said the ticket agent, &quot;We don&apos;t allow animals in the theater.&quot;  </p><p> The old farmer went around the corner and stuffed the bird down his pants. He returned to the booth, bought a ticket and entered the theater. He sat down next to two old widows named Mildred and Marge.  </p><p> The movie started and the rooster began to squirm. The old farmer unzipped his pants so Chucky could stick his head out and watch the movie.  <br> &quot;Marge&quot;, whispered Mildred.  </p><p> &quot;What&quot;, said Marge.  </p><p> &quot;I think this guy next to me is a pervert.&quot;, said Mildred.  </p><p> &quot;What makes you think that&quot;, asked Marge.  </p><p> &quot;He unzipped his pants and he has his thing out&quot;, whispered Mildred.  </p><p> &quot;Well, don&apos;t worry about it&quot;, said Marge, &quot;At our age we&apos;ve seen them all.&quot;  </p><p> &quot;I thought so&quot;, said Mildred, &quot;But this one is eating my popcorn!&quot;</p>', 'chucky-at-the-movies', 1, NULL, 'Chucky at the Movies', '2017-08-27 15:44:23', '2017-08-27 15:44:23'),
(853, 'Clinton Jackson: Talk to the Cat', '<p>I never talk to our cat, and our cat certainly never talks to me. So I don&apos;t know why my wife is compelled to put the cat on the phone when I call home, but I love my wife, so I will talk to the cat.</p>', 'clinton-jackson--talk-to-the-cat', 1, NULL, 'Clinton Jackson: Talk to the Cat', '2017-08-27 15:44:24', '2017-08-27 15:44:24'),
(854, 'Clown Booty Call... Poodles', '<p>Can my dancing poodles watch? Honk honk!</p>', 'clown-booty-call----poodles', 1, NULL, 'Clown Booty Call... Poodles', '2017-08-27 15:44:26', '2017-08-27 15:44:26'),
(855, 'Clumsy Insects', '<p>Q: What is the clumsiest insect? </p><p> A: The bumbling bee. </p><p></p>', 'clumsy-insects', 1, NULL, 'Clumsy Insects', '2017-08-27 15:44:27', '2017-08-27 15:44:27'),
(856, 'Colin Quinn: Lions Are a Joke', '<p>You go to safari, you&apos;re going to find out the lion is a joke... They&apos;re big over here; in Africa, the other animals laugh at them. They&apos;re like idiots with mullets.</p>', 'colin-quinn--lions-are-a-joke', 1, NULL, 'Colin Quinn: Lions Are a Joke', '2017-08-27 15:44:29', '2017-08-27 15:44:29'),
(857, 'Colin Quinn: Safari', '<p>My friend goes to me, &apos;I can&apos;t picture you on safari, Col.&apos; What does that mean? I don&apos;t seem athletic enough to sit in the back of a jeep and look at a f**king zebra?</p>', 'colin-quinn--safari', 1, NULL, 'Colin Quinn: Safari', '2017-08-27 15:44:30', '2017-08-27 15:44:30'),
(858, 'Condom Dog', '<p>A guy walks into a store and buys six jumbo boxes of condoms. The store clerk asks the man, &quot;What are you going to do with all of those?&quot; </p><p> The guy replies, &quot;I taught my dog to swallow them, and now he s**ts in little plastic baggies!&quot; </p><p></p>', 'condom-dog', 1, NULL, 'Condom Dog', '2017-08-27 15:44:32', '2017-08-27 15:44:32'),
(859, 'Cow Abortion', '<p>Q: What do you call a cow who&apos;s had an abortion?</p><p>A: De-calf-i-nated. </p><p></p>', 'cow-abortion', 1, NULL, 'Cow Abortion', '2017-08-27 15:44:33', '2017-08-27 15:44:33'),
(860, 'Cow Fun', '<p>Q: What do cows read in the morning?         </p><p> A: The daily moos. </p><p></p>', 'cow-fun', 1, NULL, 'Cow Fun', '2017-08-27 15:44:35', '2017-08-27 15:44:35'),
(861, 'Cow Murder Mystery', '<p>Q: What do you call a cow murder mystery?     </p><p> A: A moo-done-it. </p><p></p>', 'cow-murder-mystery', 1, NULL, 'Cow Murder Mystery', '2017-08-27 15:44:36', '2017-08-27 15:44:36'),
(862, 'Cow or Tractor', '<p>If a farmer was only able to choose between buying a cow or a tractor, what should he pick. On one hand, he would look funny riding on a cow.  On the other hand, he would look funnier trying to milk a tractor.</p>', 'cow-or-tractor', 1, NULL, 'Cow or Tractor', '2017-08-27 15:44:37', '2017-08-27 15:44:37'),
(863, 'Cow Pat Lip Gloss', '<p>An old cowhand came riding into town on a hot, dry, dusty day. The local sheriff watched from his chair in front of the saloon as the cowboy wearily dismounted and tied his horse to the rail. The cowboy then moved slowly to the back of his horse, lifted its tail, and placed a big kiss where the sun don&apos;t shine. He dropped the horse&apos;s tail, stepped up on the walk and aimed toward the swinging doors of the saloon. </p><p> &quot;Hold on there, Mister,&quot; said the sheriff. &quot;Did I just see what I think I saw?&quot; </p><p> &quot;Reckon you did, Sheriff. I got me some powerful chapped lips.&quot;  </p><p> &quot;And that cures them?&quot; the Sheriff asked.  </p><p> &quot;Nope, but it keeps me from lickin&apos; &apos;em.&quot;</p>', 'cow-pat-lip-gloss', 1, NULL, 'Cow Pat Lip Gloss', '2017-08-27 15:44:39', '2017-08-27 15:44:39'),
(864, 'Cow Reflexes', '<p>Q: What do you call a cow with a twitch?         </p><p> A: Beef jerky. </p><p></p>', 'cow-reflexes', 1, NULL, 'Cow Reflexes', '2017-08-27 15:44:40', '2017-08-27 15:44:40'),
(865, 'Cow Riddle', '<p>A black cow was standing in the middle of the road. A man was hauling ass around a corner with no headlights on. He slams on the brakes at just the right time to miss the cow. How did the guy see the cow?  </p><p>It was daytime. </p><p></p>', 'cow-riddle', 1, NULL, 'Cow Riddle', '2017-08-27 15:44:42', '2017-08-27 15:44:42'),
(866, 'Cow\'s Tail vs. Tie', '<p>Q: What&apos;s the difference between a cow&apos;s tail and a man&apos;s tie?</p><p>A: The cow&apos;s tail hides the entire a**hole. </p><p></p>', 'cow-s-tail-vs--tie', 1, NULL, 'Cow\'s Tail vs. Tie', '2017-08-27 15:44:43', '2017-08-27 15:44:43'),
(867, 'Cowboy Talks to the Animals', '<p>A cowboy passes by a ranch and strikes up a conversation with the rancher sitting by the gate.<br><br>The cowboy asks the rancher, &quot;Mind if I talk to your dog over there?&quot;<br><br>&quot;Damn fool, don&apos;t you know dogs can&apos;t talk?&quot;<br><br>The cowboy replies, &quot;So what&apos;s the harm?&quot;<br><br>The rancher shrugs, &quot;Go right ahead.&quot;<br><br>The cowboy ambles up to the dog and says, &quot;Howdy!&quot; The dog replies, &quot;Hello.&quot;<br><br>The rancher&apos;s eyes pop wide open.<br><br>The cowboy continues, &quot;Does your master here treat you alright?&quot;<br><br>&quot;Sure does. He feeds me, lets me sleep inside, and every day he takes me to the lake.&quot;<br><br>The cowboy asks the shocked rancher, &quot;Mind if I talk to your horse over there?&quot;<br><br>The rancher replies, &quot;Now, I don&apos;t know what you&apos;re up to, but I know for a fact that horses can&apos;t talk.&quot;<br><br>&quot;Well then, what&apos;s the harm?&quot;<br><br>&quot;Go right ahead,&quot; says the rancher.<br><br>The cowboy says to the horse, &quot;Hello.&quot; The horse replies, &quot;Hello.&quot;<br><br>The rancher&apos;s jaw drops.<br><br>The cowboy asks, &quot;Your owner here treat you OK?&quot;<br><br>&quot;Sure,&quot; replies the horse, tossing his mane. &quot;He rides me every day, brushes me down, feeds me good, and he keeps me in the barn out of the bad weather.&quot;<br><br>The cowboy looks satisfied and turns to the rancher, &quot;Are those your sheep over there?&quot;<br><br>The rancher looks alarmed and stammers, &quot;Listen -- them sheep out there, they&apos;re -- they&apos;re nothing but a bunch of liars!&quot;</p>', 'cowboy-talks-to-the-animals', 1, NULL, 'Cowboy Talks to the Animals', '2017-08-27 15:44:45', '2017-08-27 15:44:45'),
(868, 'Craig Shoemaker: Half-Pit Bull, Half-Poodle', '<p>I had a dog: half-pit bull, half-poodle. Not much of a guard dog, but a vicious gossip.</p>', 'craig-shoemaker--half-pit-bull--half-poodle', 1, NULL, 'Craig Shoemaker: Half-Pit Bull, Half-Poodle', '2017-08-27 15:44:46', '2017-08-27 15:44:46'),
(869, 'Crazy Little Critters', '<p>Q: How do crabs leave the hospital?        </p><p> A: On crutches. </p><p></p>', 'crazy-little-critters', 1, NULL, 'Crazy Little Critters', '2017-08-27 15:44:48', '2017-08-27 15:44:48'),
(870, 'Cricket', '<p>Q: If you had one cricket ball in one hand and another cricket ball in your other hand, what would you have?     </p><p> A: A bloody big cricket. </p><p></p>', 'cricket', 1, NULL, 'Cricket', '2017-08-27 15:44:49', '2017-08-27 15:44:49'),
(871, 'Cross the Road... Chicken Keeps Going', '<p>Why did the chicken cross the road? To get to the other side.<br><br>Why did she go to the other side? To go to the bar.<br><br>Why did she go to the bar? To go to the toilet.<br><br>Why did she go to the toilet? Because that&apos;s where all the cocks hang out.</p>', 'cross-the-road----chicken-keeps-going', 1, NULL, 'Cross the Road... Chicken Keeps Going', '2017-08-27 15:44:51', '2017-08-27 15:44:51'),
(872, 'Cross the Road... Fat Turkey', '<p>Q: Why did the fat turkey cross the road?<br><br>A: To get hit by my car.</p>', 'cross-the-road----fat-turkey', 1, NULL, 'Cross the Road... Fat Turkey', '2017-08-27 15:44:52', '2017-08-27 15:44:52'),
(873, 'Cross the Road... Forgetful Chicken', '<p>Q: Why did the forgetful chicken cross the road?<br><br>A: To get to the other side -- er, no -- to go shopping -- no, not that either -- damn it.<br></p>', 'cross-the-road----forgetful-chicken', 1, NULL, 'Cross the Road... Forgetful Chicken', '2017-08-27 15:44:54', '2017-08-27 15:44:54'),
(874, 'Cross the Road... Little Cow', '<p>Q: Why did the calf cross the road?<br><br>A: To get to the udder side.</p>', 'cross-the-road----little-cow', 1, NULL, 'Cross the Road... Little Cow', '2017-08-27 15:44:55', '2017-08-27 15:44:55'),
(875, 'Cross the Road... Monkey', '<p>Q: Why did the monkey cross the road?<br><br>A: So he could get spanked.</p>', 'cross-the-road----monkey', 1, NULL, 'Cross the Road... Monkey', '2017-08-27 15:44:57', '2017-08-27 15:44:57'),
(876, 'Cutest Baby Chicks Ever', '<p>Q: Why do baby chicks say, &quot;Cheep, cheep, cheep&quot;? </p><p> A: They can&apos;t say, &quot;Expensive, expensive, expensive.&quot; </p><p></p>', 'cutest-baby-chicks-ever', 1, NULL, 'Cutest Baby Chicks Ever', '2017-08-27 15:44:58', '2017-08-27 15:44:58'),
(877, 'D.C. Benny: German Shepherd', '<p>I&apos;m Jewish, and I have a German Shepherd. That&apos;s a bad combination &apos;cause he&apos;s always looking at me, like he&apos;s thinking about the good old days.</p>', 'd-c--benny--german-shepherd', 1, NULL, 'D.C. Benny: German Shepherd', '2017-08-27 15:45:00', '2017-08-27 15:45:00'),
(878, 'Dan Devido: Fraternity Fish', '<p>I was gonna join this fraternity, but they make you do crazy stunts, so I had to swallow five live goldfish to join -- and I tried. I swallowed two, and I felt so guilty that I swallowed a pound of pebbles and a little filter and a little man in a scuba suit.</p>', 'dan-devido--fraternity-fish', 1, NULL, 'Dan Devido: Fraternity Fish', '2017-08-27 15:45:01', '2017-08-27 15:45:01'),
(879, 'Dan Soder: Factory Job', '<p>I read a news article recently about a group of animal rights activists that went and protested a makeup factory because they said that this factory was testing makeup on animals, which is f**king hilarious. Are you serious? Someone gets paid to put lipstick on a chimp? Sign me up, right now. I&apos;ll quit comedy. I&apos;ll work 100 hours a week. You let me smoke weed at lunch, I won&apos;t even join a union. I&apos;ll just chuckle and collect my check.</p>', 'dan-soder--factory-job', 1, NULL, 'Dan Soder: Factory Job', '2017-08-27 15:45:03', '2017-08-27 15:45:03'),
(880, 'Dana Gould: Hypocritical Liberal Los Angeles', '<p>I love Los Angeles. It&apos;s a very liberal city, but it&apos;s so hypocritical in what it&apos;s liberal about. Like you can be driving down Hollywood Boulevard, see a guy in lipstick and high-heels wearing a fur coat, masturbating into a mailbox. People giving him a hard time as they drive by: &apos;Hey! Is that real fur?&apos; &apos;Course not, that&apos;s sick!&apos;</p>', 'dana-gould--hypocritical-liberal-los-angeles', 1, NULL, 'Dana Gould: Hypocritical Liberal Los Angeles', '2017-08-27 15:45:04', '2017-08-27 15:45:04'),
(881, 'Dangerous & Swings', '<p>Q: What&apos;s dangerous and swings from trees?</p><p>A: A monkey with a chainsaw. </p><p></p>', 'dangerous---swings', 1, NULL, 'Dangerous & Swings', '2017-08-27 15:45:06', '2017-08-27 15:45:06'),
(882, 'Daniel Kilpatrick: Screwing the Pooch', '<p>I recently got accused of ?screwing the pooch? -- which I think is my favorite idiom in the English language because I think it&apos;s a big leap from a minor mishap to bestiality.</p>', 'daniel-kilpatrick--screwing-the-pooch', 1, NULL, 'Daniel Kilpatrick: Screwing the Pooch', '2017-08-27 15:45:08', '2017-08-27 15:45:08'),
(883, 'Darrell Hammond: On George H.W. Bush', '<p>He was never really a diplomat, that Bush. When he was vice president and Reagan would be talking, it was so funny &apos;cause you could catch Bush sitting behind Reagan, looking at him like your dog looks at your answering machine when your voice is coming out.</p>', 'darrell-hammond--on-george-h-w--bush', 1, NULL, 'Darrell Hammond: On George H.W. Bush', '2017-08-27 15:45:09', '2017-08-27 15:45:09'),
(884, 'Dave Attell: Against Porno', '<p>Some people are against porno movies, and I say, &apos;Hey, Ohio, Kentucky and Iran!&apos; I say, &apos;Hey, whatever a man and a woman and another woman with a penis and a midget do to a donkey is their gosh darn business.&apos;</p>', 'dave-attell--against-porno', 1, NULL, 'Dave Attell: Against Porno', '2017-08-27 15:45:11', '2017-08-27 15:45:11'),
(885, 'Dave Attell: Make My Own Fun', '<p>I make my own fun. Like today, I&apos;m sitting on the couch, right? My dog&apos;s licking himself, right? I&apos;m touching myself, right? We catch each others eyes -- we both start laughing.</p>', 'dave-attell--make-my-own-fun', 1, NULL, 'Dave Attell: Make My Own Fun', '2017-08-27 15:45:12', '2017-08-27 15:45:12'),
(886, 'Dave Attell: Uppity Fish', '<p>You know what happened one time? Drunk, nothing to do, I end up doing what? My penis in my fish tank, alright? Now, I did it just to show them who&apos;s boss. They were getting a little uppity. Even the diver guy stopped bubbling. He&apos;s like, &apos;Wha?&apos;</p>', 'dave-attell--uppity-fish', 1, NULL, 'Dave Attell: Uppity Fish', '2017-08-27 15:45:14', '2017-08-27 15:45:14'),
(887, 'Dave Waite: Costume Party', '<p>I got to go to a costume party next week. I&apos;m going to dress up as a bear so I can eat beaver.</p>', 'dave-waite--costume-party', 1, NULL, 'Dave Waite: Costume Party', '2017-08-27 15:45:15', '2017-08-27 15:45:15'),
(888, 'David Cross: Delicious Ugly Animals', '<p>If a dolphin was ugly and tasted good, we&apos;d be eating it by the truckload. No one would care. The only negative thing that ever happened to a tuna was it was born butt ugly and it mixes well with mayo.</p>', 'david-cross--delicious-ugly-animals', 1, NULL, 'David Cross: Delicious Ugly Animals', '2017-08-27 15:45:17', '2017-08-27 15:45:17');
INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `user_id`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(889, 'David Cross: Intelligent Dolphins', '<p>We don&apos;t not-eat the dolphins because they&apos;re cute. We don&apos;t eat the dolphins because they&apos;re &apos;intelligent&apos; -- people have said that to me -- which I think is really stupid logic. I suppose if you&apos;re going to use that kind of rationale, then we should be eating the retarded.</p>', 'david-cross--intelligent-dolphins', 1, NULL, 'David Cross: Intelligent Dolphins', '2017-08-27 15:45:18', '2017-08-27 15:45:18'),
(890, 'David Feldman: Dolphin Intelligence', '<p>Dolphins are intelligent? If they&apos;re so intelligent, get out of the nets.</p>', 'david-feldman--dolphin-intelligence', 1, NULL, 'David Feldman: Dolphin Intelligence', '2017-08-27 15:45:20', '2017-08-27 15:45:20'),
(891, 'Dead Donkey', '<p>A reverend awoke one morning to find a dead donkey in his front yard. He had no idea how it got there, but he knew he had to get rid of it.   </p><p> He called the sanitation department, the health department and several other agencies, but no one seemed able to help him. </p><p>In desperation, the good reverend called the mayor and asked what should  be done. </p><p>   The mayor asked, &apos;&apos;Why bother me? &quot;You&apos;re a clergyman. It&apos;s your job to bury the dead.&apos;&apos;</p><p> The reverend lost his cool. &apos;&apos;Yes,&apos;&apos; he snapped. &apos;&apos;But I thought I should at least notify the next-of-kin.&apos;&apos; </p><p></p>', 'dead-donkey', 1, NULL, 'Dead Donkey', '2017-08-27 15:45:21', '2017-08-27 15:45:21'),
(892, 'Deaf Rover', '<p>Q: What do you call a dog wearing ear muffs? </p><p>A: Anything you want -- he can&apos;t hear you. </p><p></p>', 'deaf-rover', 1, NULL, 'Deaf Rover', '2017-08-27 15:45:23', '2017-08-27 15:45:23'),
(893, 'Demetri Martin: Dalmatian and Cow', '<p>When a Dalmatian sees a cow he must be like, &apos;What the hell happened to him? I am high right now. That dalmatian is fat and smeary.&apos; When the cow sees the Dalmatian he must be like, &apos;He looks amazing. I am so out of shape, this is ridiculous. My tits are on the ground here.&apos;</p>', 'demetri-martin--dalmatian-and-cow', 1, NULL, 'Demetri Martin: Dalmatian and Cow', '2017-08-27 15:45:24', '2017-08-27 15:45:24'),
(894, 'Demetri Martin: Dog Wearing a Sweater', '<p>I saw a dog wearing a sweater and I thought that looked ridiculous &apos;cause dogs don&apos;t have arms. If you&apos;re going to put clothes on the dog, you should put two pairs of pants on it.</p>', 'demetri-martin--dog-wearing-a-sweater', 1, NULL, 'Demetri Martin: Dog Wearing a Sweater', '2017-08-27 15:45:26', '2017-08-27 15:45:26'),
(895, 'Demetri Martin: Fish Names', '<p>On Thursday, I changed the names of all my fish, and they didn&apos;t seem to mind -- especially Dead Tony.</p>', 'demetri-martin--fish-names', 1, NULL, 'Demetri Martin: Fish Names', '2017-08-27 15:45:26', '2017-08-27 15:45:26'),
(896, 'Demetri Martin: Pillow Fights', '<p>Man versus woman equals fun. Man versus man equals gay. Woman versus woman equals awesome. Man versus pillow equals crazy. Pillow versus pillow equals crazy awesome -- that&apos;s a real pillow fight right there. You see two pillows fighting, you know something&apos;s going down. They&apos;re designed for relaxation. If they&apos;re fighting, what hope do we have? One time I saw two geese fighting, and I was like, &apos;This is a pillow fight ahead of time.&apos;</p>', 'demetri-martin--pillow-fights', 1, NULL, 'Demetri Martin: Pillow Fights', '2017-08-27 15:45:28', '2017-08-27 15:45:28'),
(897, 'Demetri Martin: Pinata', '<p>I don&apos;t like pinatas because the pinata promotes violence against flamboyant animals.</p>', 'demetri-martin--pinata', 1, NULL, 'Demetri Martin: Pinata', '2017-08-27 15:45:29', '2017-08-27 15:45:29'),
(898, 'Demetri Martin: Some Women Are Liars', '<p>I love women, but you can&apos;t always trust them. Some of them are liars, like this girl I met in the park. She was walking her dog and she was cute, so I started to talk to her. She told me her dog&apos;s name. I said, &apos;Does he bite?&apos; She said, &apos;No.&apos; I said, &apos;Oh yeah, then how does he eat?&apos;</p>', 'demetri-martin--some-women-are-liars', 1, NULL, 'Demetri Martin: Some Women Are Liars', '2017-08-27 15:45:31', '2017-08-27 15:45:31'),
(899, 'DeRay: Bird Hit by a Car', '<p>I&apos;ve seen a bird get hit by a car. As a bird, how do you get hit by a car? Then I started thinking, it was a black bird showing off for some girl birds.</p>', 'deray--bird-hit-by-a-car', 1, NULL, 'DeRay: Bird Hit by a Car', '2017-08-27 15:45:33', '2017-08-27 15:45:33'),
(900, 'Dinosaur & Pig', '<p>Q: What do you get when you cross a dinosaur with a pig? </p><p> A: Jurrassic Pork. </p><p></p>', 'dinosaur---pig', 1, NULL, 'Dinosaur & Pig', '2017-08-27 15:45:34', '2017-08-27 15:45:34'),
(901, 'Dinosaur Booty Call... Ass', '<p>Hatchling, you put the &quot;ass&quot; in Jurassic.</p>', 'dinosaur-booty-call----ass', 1, NULL, 'Dinosaur Booty Call... Ass', '2017-08-27 15:45:36', '2017-08-27 15:45:36'),
(902, 'Dinosaur Booty Call... Herbivore', '<p>Just because you&apos;re a plant eater doesn&apos;t mean you shouldn&apos;t try Tyrannosaurus Sex.</p>', 'dinosaur-booty-call----herbivore', 1, NULL, 'Dinosaur Booty Call... Herbivore', '2017-08-27 15:45:38', '2017-08-27 15:45:38'),
(903, 'Dinosaur Booty Call... Name', '<p>Curious to see why they call me a &quot;please-you-a-saur?&quot;</p>', 'dinosaur-booty-call----name', 1, NULL, 'Dinosaur Booty Call... Name', '2017-08-27 15:45:39', '2017-08-27 15:45:39'),
(904, 'Dinosaur Booty Call... Pedal', '<p>Those other dinosaurs may be bipedal and quadrupedal, but I&apos;m tripedal, if you know what I mean.</p>', 'dinosaur-booty-call----pedal', 1, NULL, 'Dinosaur Booty Call... Pedal', '2017-08-27 15:45:40', '2017-08-27 15:45:40'),
(905, 'Dinosaur Crossing', '<p>Q: Why did the dinosaur cross the road?    </p><p> A: It was the chicken&apos;s day off. </p><p></p>', 'dinosaur-crossing', 1, NULL, 'Dinosaur Crossing', '2017-08-27 15:45:41', '2017-08-27 15:45:41'),
(906, 'DL Hughley: White Folks\' Little Dogs', '<p>White folk, y&apos;all got the littlest dogs I have ever seen in my whole life. &apos;Her name is Peppers. She weighs three pounds and cost $2,000.&apos; Well, you should have named her Cocaine.</p>', 'dl-hughley--white-folks--little-dogs', 1, NULL, 'DL Hughley: White Folks\' Little Dogs', '2017-08-27 15:45:43', '2017-08-27 15:45:43'),
(907, 'Doe in the Woods', '<p>Q: What did the doe say when she came running out of the woods?   </p><p> A: &quot;I&apos;ll never do that for two bucks again.&quot; </p><p></p>', 'doe-in-the-woods', 1, NULL, 'Doe in the Woods', '2017-08-27 15:45:45', '2017-08-27 15:45:45'),
(908, 'Dog & Elephant', '<p>Q: What do you get when you cross a dog with an elephant?</p><p>A: A very nervous postman. </p><p></p>', 'dog---elephant', 1, NULL, 'Dog & Elephant', '2017-08-27 15:45:46', '2017-08-27 15:45:46'),
(909, 'Dog Abilities', '<p>Q: Why do dogs lick their balls?</p><p>A: Because they can.</p><p>Q: So why do they stick their noses in women&apos;s crotches?</p><p>A: Same reason. </p><p></p>', 'dog-abilities', 1, NULL, 'Dog Abilities', '2017-08-27 15:45:48', '2017-08-27 15:45:48'),
(910, 'Dog Balls', '<p>Q: What do you call a dog that has balls of steel and is dragging them across cement? </p><p> A: Sparky. </p><p></p>', 'dog-balls', 1, NULL, 'Dog Balls', '2017-08-27 15:45:49', '2017-08-27 15:45:49'),
(911, 'Dog Crossing', '<p>Q: Why did the dog cross the road?   </p><p> A: He saw some dog food. </p><p></p>', 'dog-crossing', 1, NULL, 'Dog Crossing', '2017-08-27 15:45:50', '2017-08-27 15:45:50'),
(912, 'Dog Dancer', '<p>Q: Why are dogs such bad dancers? </p><p>A: They have two left feet. </p><p></p>', 'dog-dancer', 1, NULL, 'Dog Dancer', '2017-08-27 15:45:52', '2017-08-27 15:45:52'),
(913, 'Dog Days', '<p>Q: What do you get when you cross a dog with a telephone?   </p><p>A:  A golden receiver. </p><p></p>', 'dog-days', 1, NULL, 'Dog Days', '2017-08-27 15:45:54', '2017-08-27 15:45:54'),
(914, 'Dog Fishin\'', '<p>Q: What kind of fish does a dog catch?       </p><p> A: Catfish. </p><p></p>', 'dog-fishin-', 1, NULL, 'Dog Fishin\'', '2017-08-27 15:45:55', '2017-08-27 15:45:55'),
(915, 'Dog With No Legs', '<p>Q: What do you call a dog with no legs?</p><p>A: It doesn&apos;t matter -- he&apos;s not going to come anyway. </p><p></p>', 'dog-with-no-legs', 1, NULL, 'Dog With No Legs', '2017-08-27 15:45:57', '2017-08-27 15:45:57'),
(916, 'Doggone It', '<p>Q: What did the dog say when it sat on sandpaper?  </p><p> A: Ruff!</p><p></p>', 'doggone-it', 1, NULL, 'Doggone It', '2017-08-27 15:45:58', '2017-08-27 15:45:58'),
(917, 'Doggy Licks', '<p>Q: Why does a dog lick himself?  </p><p> A: He can&apos;t make a fist. </p><p></p>', 'doggy-licks', 1, NULL, 'Doggy Licks', '2017-08-27 15:46:00', '2017-08-27 15:46:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `votes` float(10,0) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `votes`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2017-08-13 10:16:48', '2017-08-13 10:40:01'),
(2, 0, 1, 2, '2017-08-13 10:40:36', '2017-08-23 13:19:38'),
(3, 0, 2, 2, '2017-08-13 10:41:52', '2017-08-13 11:32:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_twiter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `slug`, `url_facebook`, `url_twiter`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lam', 'hoanglam.bk57@gmail.com', '$2y$10$6YjCbLCZYvybknfIwS7uJOZ5gzTz/JXGdXh7ZiZbUcZ4OQbuYZOtu', 'lam', '', '', 'ceZDMYk1cNkDwj7rxavTR0e6ZN3AwCWVhavPcFWduFd91h5qHijr1aOD1A2v', '2017-08-13 10:16:02', '2017-08-13 10:16:02'),
(2, 'Hoang', 'hoanglam.bk58@gmail.com', '$2y$10$2Y63cNWWRVPkFGzpygDOrudcv4v4pKzQ0ddTvM9ulvWgBVxIDcRAG', 'hoang', '', '', 'deUw35kayUn1tykqGxc4M4fhv3JRRj1iBT0X5iU5nCGMvwrchRpbB83urmT2', '2017-08-13 10:40:32', '2017-08-13 10:40:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rates_post_id_foreign` (`post_id`),
  ADD KEY `rates_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=918;
--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `rates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
