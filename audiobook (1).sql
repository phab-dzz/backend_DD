-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2024 lúc 12:00 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `audiobook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `durating` int(11) DEFAULT NULL,
  `chapter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`chapter`)),
  `rating` varchar(255) DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `audiosrc` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `author`, `durating`, `chapter`, `rating`, `imgsrc`, `audiosrc`, `genre`, `createdAt`, `updatedAt`) VALUES
('002c3339-7735-429a-8a99-dcbca3f6cfa3', 'Súng, Vi Trùng Và Thép', 'Súng, Vi Trùng Và Thép: Định Mệnh Của Các Xã Hội Loài Người là cuốn sách nổi tiếng nhất của Jared Diamond, được xuất bản lần đầu vào năm 1997. Nội dung sách giải thích vì sao các nền văn minh Á – Âu (bao gồm cả Bắc Phi) lại tồn tại được, cũng như đã chinh', 'Jared Diamond', 1261, '[{\"title\":\"Chương 1: Tại sao châu Âu lại chinh phục thế giới?\",\"description\":\"Giới thiệu về câu hỏi cốt lõi của cuốn sách: tại sao các nền văn minh phương Tây lại có khả năng chinh phục và thống trị các nền văn minh khác?\"},{\"title\":\"Chương 2: Các yếu tố quyết định sự phát triển\",\"description\":\"Tìm hiểu về các yếu tố quyết định sự phát triển của các xã hội, bao gồm địa lý, tài nguyên thiên nhiên, và sự sáng tạo.\"},{\"title\":\"Chương 3: Sự ra đời của nông nghiệp\",\"description\":\"Khám phá sự chuyển từ săn bắn hái lượm sang nông nghiệp, và cách thức thay đổi này ảnh hưởng đến sự phát triển của các xã hội.\"},{\"title\":\"Chương 4: Những cú sốc lớn trong lịch sử\",\"description\":\"Phân tích những cú sốc lớn mà các xã hội phải đối mặt, bao gồm dịch bệnh và chiến tranh, và ảnh hưởng của chúng đối với sự phát triển.\"},{\"title\":\"Chương 5: Sự lan rộng của công nghệ\",\"description\":\"Nghiên cứu cách thức công nghệ được truyền bá và áp dụng, và tác động của nó đối với sự thịnh vượng của các nền văn minh.\"},{\"title\":\"Chương 6: Sự phân hóa xã hội và chính trị\",\"description\":\"Tìm hiểu sự phát triển của các cấu trúc xã hội và chính trị, bao gồm các yếu tố dẫn đến sự phân hóa xã hội.\"},{\"title\":\"Chương 7: Đế chế, chinh phục và sức mạnh quân sự\",\"description\":\"Phân tích vai trò của sức mạnh quân sự và đế chế trong việc chinh phục và thống trị các nền văn minh khác.\"},{\"title\":\"Chương 8: Những tương lai của các nền văn minh\",\"description\":\"Khám phá các viễn cảnh khác nhau về tương lai của các nền văn minh và tác động của chúng đối với thế giới hiện đại.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược các lý thuyết và kết luận của cuốn sách về những yếu tố quyết định sự thành công hay thất bại của các nền văn minh.\"}]', '( 6 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2Fff40bed0-7f4c-11ef-8bf7-f50f82d49158%2FcoverImage%2F1727764330276_3x.webp&w=1920&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Khoa học - Kỹ thuật', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('04fec3d4-78d9-415c-82ee-99e90dd53859', 'Hai Số Phận', 'Jeffrey Archer viết cuốn tiểu thuyết này dựa theo câu chuyện của anh em Cain và Abel trong Kinh Thánh Cựu Ước. Truyện kể về William Kane, con một triệu phú nổi tiếng trên đất Mỹ, lớn lên trong nhung lụa, người kia là Abel Rosnovski, đứa trẻ không rõ xuất ', 'Jeffrey Archer', 1292, '[{\"title\":\"Chương 1: Sự gặp gỡ định mệnh\",\"description\":\"Giới thiệu hai nhân vật chính và hoàn cảnh sống của họ. Cuộc gặp gỡ giữa hai con người ở những nơi khác nhau, mở ra những cơ hội và thách thức.\"},{\"title\":\"Chương 2: Quá khứ đen tối\",\"description\":\"Khám phá quá khứ của các nhân vật, những trải nghiệm đau thương đã ảnh hưởng đến lựa chọn và cuộc sống hiện tại của họ.\"},{\"title\":\"Chương 3: Lựa chọn và quyết định\",\"description\":\"Các nhân vật phải đối diện với những quyết định quan trọng, có ảnh hưởng sâu sắc đến tương lai của họ và những người xung quanh.\"},{\"title\":\"Chương 4: Tình yêu và sự hy sinh\",\"description\":\"Tình yêu và sự hy sinh là chủ đề chính trong chương này, nơi các nhân vật phải lựa chọn giữa yêu thương và trách nhiệm.\"},{\"title\":\"Chương 5: Sự đụng độ giữa lý trí và cảm xúc\",\"description\":\"Mâu thuẫn nội tâm giữa lý trí và cảm xúc bắt đầu diễn ra mạnh mẽ, khiến các nhân vật phải lựa chọn theo cách riêng của họ.\"},{\"title\":\"Chương 6: Cuộc sống thay đổi mãi mãi\",\"description\":\"Những biến cố lớn xảy đến, thay đổi hoàn toàn cuộc sống của các nhân vật, đưa họ đến những ngã rẽ quan trọng trong hành trình.\"},{\"title\":\"Chương 7: Đối mặt với sự thật\",\"description\":\"Các nhân vật phải đối diện với sự thật về bản thân và người xung quanh, qua đó nhận thức lại những giá trị quan trọng trong cuộc sống.\"},{\"title\":\"Chương 8: Kết thúc mở\",\"description\":\"Cuối cùng, câu chuyện kết thúc mở, để lại những suy ngẫm và cảm xúc khó tả về sự lựa chọn và cuộc sống.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm tắt câu chuyện và những bài học về sự lựa chọn, số phận và cách các nhân vật đối mặt với thử thách trong cuộc sống.\"}]', '( 242 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F34d68260-bf7b-11ee-9660-fbe47ef90e4c%2FcoverImage%2F1706624638346_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Văn học đương đại', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('0c333f63-6188-4aee-bd04-ed9d0d4442a2', 'Khắc đi...Khắc đến', 'Từ Hà Nội đến Paris, từ Singapore đến Bỉ, từ Thụy Sĩ đến Hong Kong, cuốn sách là cuộc hành trình của một người phụ nữ tha thiết mong muốn mang hội họa Việt Nam ra thế giới. Bà Nguyễn Thị Xuân Phượng - ở tuổi 95, ra mắt cuốn hồi ký thứ hai của mình, ghi lạ', 'Xuân Phượng', 278, '[{\"title\":\"Chương 1: Sự khởi đầu của một câu chuyện\",\"description\":\"Giới thiệu về các nhân vật chính trong câu chuyện và hoàn cảnh sống của họ, những điều tưởng chừng bình thường nhưng lại đầy ẩn ý.\"},{\"title\":\"Chương 2: Mối liên kết bất ngờ\",\"description\":\"Khám phá mối liên kết giữa các nhân vật, những sự kiện ngẫu nhiên làm thay đổi cuộc sống của họ.\"},{\"title\":\"Chương 3: Những kỷ niệm xưa cũ\",\"description\":\"Hồi tưởng lại quá khứ của các nhân vật, những kỷ niệm đầy ắp tình cảm và những biến cố đã tạo nên những con người của hiện tại.\"},{\"title\":\"Chương 4: Cuộc sống không như mong đợi\",\"description\":\"Các nhân vật đối diện với những thử thách lớn, những điều không như họ đã tưởng tượng về cuộc sống và tình yêu.\"},{\"title\":\"Chương 5: Những lần gặp gỡ định mệnh\",\"description\":\"Một loạt những cuộc gặp gỡ đầy ẩn chứa các thông điệp sâu sắc, nơi các nhân vật tìm thấy câu trả lời cho những câu hỏi lớn trong cuộc sống.\"},{\"title\":\"Chương 6: Cái giá của sự trưởng thành\",\"description\":\"Các nhân vật phải đối mặt với sự thay đổi của bản thân và thế giới xung quanh, nhận thức được cái giá của sự trưởng thành và mất mát.\"},{\"title\":\"Chương 7: Tình yêu và những lựa chọn\",\"description\":\"Khám phá các quyết định quan trọng trong cuộc sống, tình yêu và những lựa chọn khó khăn mà mỗi nhân vật phải đối diện.\"},{\"title\":\"Chương 8: Khắc đi... Khắc đến\",\"description\":\"Thông điệp chính của cuốn sách: việc kiên trì và bền bỉ trong hành động, dù có thể gặp khó khăn nhưng cuối cùng sẽ đạt được kết quả.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược những bài học cuộc sống từ câu chuyện và nhấn mạnh ý nghĩa của việc khắc đi và khắc đến trong mỗi bước đi của đời người.\"}]', '( 43 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F2026fa70-7998-11ef-9587-1594d5304e50%2FcoverImage%2F1727087975319_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'văn học đương đại', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('1a0d4ade-0d5c-4eb5-ac3a-57cfe413340f', 'Bốn Thỏa Ước', 'Trong Bốn thỏa ước, Don Miguel Ruiz tiết lộ nguồn gốc của niềm tin tự giới hạn bản thân cướp đi niềm vui và tạo ra đau khổ không cần thiết. Dựa trên sự khôn ngoan của Toltec cổ xưa, Bốn thỏa ước đưa ra một quy tắc ứng xử mạnh mẽ có thể nhanh chóng biến cu', 'Janet Mills, Don Miguel Ruiz', 155, '[{\"title\":\"Chương 1: Thỏa ước thứ nhất - Hãy nói lời đúng\",\"description\":\"Giới thiệu về thỏa ước đầu tiên: \'Hãy nói lời đúng\'. Tác giả nhấn mạnh tầm quan trọng của việc giao tiếp một cách chân thật và đúng đắn, tránh sử dụng lời nói gây hại.\"},{\"title\":\"Chương 2: Thỏa ước thứ hai - Đừng vội làm mọi thứ cá nhân\",\"description\":\"Phân tích thỏa ước thứ hai: \'Đừng vội làm mọi thứ cá nhân\'. Điều này giúp chúng ta nhận ra rằng không phải mọi hành động của người khác đều liên quan đến mình, tránh tự trách móc.\"},{\"title\":\"Chương 3: Thỏa ước thứ ba - Đừng tạo ra giả thuyết\",\"description\":\"Giới thiệu thỏa ước thứ ba: \'Đừng tạo ra giả thuyết\'. Đây là lời khuyên về việc không suy diễn và không đưa ra giả thuyết về người khác mà không có sự rõ ràng.\"},{\"title\":\"Chương 4: Thỏa ước thứ tư - Làm hết sức mình\",\"description\":\"Khám phá thỏa ước thứ tư: \'Làm hết sức mình\'. Tác giả khuyến khích chúng ta làm việc với tất cả sự nỗ lực và tận tâm, nhưng không lo lắng về kết quả.\"},{\"title\":\"Chương 5: Sức mạnh của những thỏa ước\",\"description\":\"Tóm tắt về sức mạnh của bốn thỏa ước trong việc thay đổi cuộc sống và cách chúng giúp chúng ta sống hạnh phúc, tự do và đầy yêu thương.\"},{\"title\":\"Chương 6: Thực hành bốn thỏa ước trong cuộc sống hàng ngày\",\"description\":\"Cung cấp các chiến lược thực hành để áp dụng bốn thỏa ước vào cuộc sống hàng ngày, giúp chúng ta trở thành phiên bản tốt nhất của chính mình.\"},{\"title\":\"Chương 7: Khám phá sự tự do thật sự\",\"description\":\"Khám phá cách mà bốn thỏa ước có thể dẫn đến sự tự do nội tâm, giải phóng chúng ta khỏi các niềm tin giới hạn và những hệ thống xã hội áp đặt.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược lại những ý tưởng chính trong cuốn sách và nhấn mạnh tầm quan trọng của việc sống theo bốn thỏa ước để đạt được sự hạnh phúc và tự do đích thực.\"}]', '( 37 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F8db72ee0-7446-11ef-b0a4-598e47369007%2FcoverImage%2F1726503184590_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Tâm lý - Tâm linh', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('31ee633d-c09f-4268-ba0b-8f34fa735f10', 'Vừa Vặn: Thuận Theo Lẽ Tự Nhiên - Một Diễn Giải Tinh Thần Về Trang Tử', 'Vừa Vặn: Thuận Theo Lẽ Tự Nhiên – Một Diễn Giải Tinh Thần Về Trang Tử là cuốn sách chứa đựng nhiều suy ngẫm của Osho về Trang Tử cùng những lời dạy, những câu chuyện ngụ ngôn tưởng như đã quen thuộc, nhưng hóa ra lại bao hàm nhiều tầng nghĩa khác.Thông qu', 'Osho', 646, '[{\"title\":\"Chương 1: Lẽ Tự Nhiên và Sự Hài Hòa\",\"description\":\"Giới thiệu về quan niệm \'thuận theo lẽ tự nhiên\' trong tư tưởng của Trang Tử, và cách con người có thể sống hòa hợp với thế giới xung quanh.\"},{\"title\":\"Chương 2: Vũ Trụ và Cái Tôi\",\"description\":\"Khám phá quan điểm của Trang Tử về sự kết nối giữa con người và vũ trụ, và cách cái tôi cá nhân ảnh hưởng đến sự hiểu biết của chúng ta.\"},{\"title\":\"Chương 3: Tính Không và Tính Vô Hình\",\"description\":\"Phân tích ý tưởng về tính không (wu wei) trong triết lý của Trang Tử và sự vắng mặt của điều gì đó là yếu tố quan trọng của sự tồn tại.\"},{\"title\":\"Chương 4: Sự Biến Hóa và Sự Thống Nhất\",\"description\":\"Tìm hiểu về các nguyên lý của sự biến hóa trong vạn vật và cách Trang Tử nhìn nhận sự chuyển biến này như một phần của sự thống nhất trong vũ trụ.\"},{\"title\":\"Chương 5: Con Đường Không Đoán Trước\",\"description\":\"Khám phá khái niệm về sự không đoán trước trong cuộc sống, nơi mọi thứ xảy ra một cách tự nhiên và không theo kế hoạch cố định.\"},{\"title\":\"Chương 6: Sự Giải Thoát và Bình An Tâm Hồn\",\"description\":\"Trang Tử dạy rằng sự giải thoát không phải là việc cố gắng kiểm soát mọi thứ mà là sống một cuộc đời tự do, buông bỏ và hòa hợp với tự nhiên.\"},{\"title\":\"Chương 7: Trang Tử và Pháp Luật của Tự Nhiên\",\"description\":\"Lý giải về cách Trang Tử nhìn nhận các quy luật tự nhiên và pháp luật, với tư tưởng rằng mọi thứ tự nó sẽ diễn ra theo cách tự nhiên của nó.\"},{\"title\":\"Chương 8: Về Con Đường Tri Thức và Trí Tuệ\",\"description\":\"Nêu bật tầm quan trọng của trí tuệ trong triết lý của Trang Tử, nhưng cũng đồng thời là sự nhận thức rằng trí tuệ có thể trở thành một hạn chế nếu quá thiên lệch.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược những nguyên lý tinh thần của Trang Tử và cách áp dụng những quan điểm này vào cuộc sống thực tiễn để đạt được sự hòa hợp và bình an.\"}]', '( 25 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2Fcd526350-7c19-11ef-8686-ddd39f29040a%2FcoverImage%2F1727363573253_3x.webp&w=1920&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Tâm lý - Tâm linh', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('5151cbf3-4591-4fc6-a72d-fb1553012d88', 'Những Quy Luật Của Bản Chất Con Người', 'Từ tác giả của các tác phẩm 48 nguyên tắc chủ chốt của quyền lực; 33 chiến lược của chiến tranh; Nghệ thuật quyến rũ; Nguyên tắc 50 - không sợ hãi; Làm chủ... đã được dịch và xuất bản tại Việt Nam, và nhận được sự ủng hộ nhiệt tình của độc g', 'Robert Greene', 1887, '[{\"title\":\"Chương 1: Quy luật về tự nhiên con người\",\"description\":\"Giới thiệu về bản chất tự nhiên của con người và cách thức con người phản ứng với thế giới xung quanh.\"},{\"title\":\"Chương 2: Quy luật về cảm xúc\",\"description\":\"Khám phá sự ảnh hưởng mạnh mẽ của cảm xúc trong các quyết định và hành vi của con người.\"},{\"title\":\"Chương 3: Quy luật về trí tuệ\",\"description\":\"Tìm hiểu về sự phát triển trí tuệ con người và cách trí tuệ ảnh hưởng đến hành vi và xã hội.\"},{\"title\":\"Chương 4: Quy luật về sự kết nối xã hội\",\"description\":\"Khám phá cách con người tạo ra các mạng lưới xã hội và tác động của các mạng lưới này.\"},{\"title\":\"Chương 5: Quy luật về bản năng và lý trí\",\"description\":\"Phân tích mối quan hệ giữa bản năng và lý trí trong hành vi con người.\"},{\"title\":\"Chương 6: Quy luật về sự tự nhận thức\",\"description\":\"Sự phát triển và ảnh hưởng của nhận thức bản thân đối với hành động và mục tiêu trong cuộc sống.\"},{\"title\":\"Chương 7: Quy luật về sự thay đổi\",\"description\":\"Những yếu tố ảnh hưởng đến sự thay đổi trong con người và cách thức thay đổi này xảy ra trong xã hội.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược các ý tưởng chính và nhấn mạnh vai trò không thể thiếu của việc hiểu rõ bản chất con người trong cuộc sống.\"}]', '( 106 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2Ff5209260-b5d8-11ee-a9b6-859f5918a94e%2FcoverImage%2F1705565392519_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Kinh doanh - Quản trị', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('b4e92d64-9481-4fc1-948a-e630d3f1b835', 'Sapiens: Lược Sử Loài Người', 'Sapiens: Lược Sử Loài Người được phát hành bản tiếng Anh lần đầu tiên vào năm 2014 và nhanh chóng được các tỷ phú Bill Gates, Mark Zuckerberg, cựu Tổng thống Barack Obama yêu thích, đưa vào danh sách khuyên đọc. Năm 2016, Bill Gates từng viết rằng ông yêu', 'Yuval Noah Harari', 971, '[{\"title\":\"Chương 1: Cuộc cách mạng nhận thức\",\"description\":\"Giới thiệu về cuộc cách mạng nhận thức diễn ra cách đây khoảng 70.000 năm, khi loài Homo sapiens bắt đầu phát triển khả năng tư duy trừu tượng và giao tiếp phức tạp.\"},{\"title\":\"Chương 2: Cuộc cách mạng nông nghiệp\",\"description\":\"Phân tích sự chuyển đổi từ xã hội săn bắn hái lượm sang xã hội nông nghiệp, dẫn đến những thay đổi sâu rộng trong tổ chức xã hội và môi trường sống.\"},{\"title\":\"Chương 3: Hợp tác quy mô lớn\",\"description\":\"Khám phá cách con người xây dựng các xã hội lớn thông qua hợp tác, đặc biệt là sự phát triển của các tôn giáo, đế chế, và các hệ thống kinh tế phức tạp.\"},{\"title\":\"Chương 4: Cuộc cách mạng khoa học\",\"description\":\"Trình bày về cuộc cách mạng khoa học bắt đầu từ thế kỷ 16 và cách thức mà khoa học đã thay đổi cách con người hiểu thế giới và định hướng phát triển xã hội.\"},{\"title\":\"Chương 5: Sự thống trị của Homo sapiens\",\"description\":\"Thảo luận về sự thống trị của loài Homo sapiens trên hành tinh, cách con người đã tiêu diệt các loài động vật khác và ảnh hưởng đến các hệ sinh thái.\"},{\"title\":\"Chương 6: Khoa học và sự phát triển không ngừng\",\"description\":\"Phân tích cách khoa học và công nghệ tiếp tục phát triển không ngừng, dẫn đến những thay đổi lớn trong xã hội và đời sống con người, bao gồm y học, công nghiệp và tri thức.\"},{\"title\":\"Chương 7: Cuộc cách mạng nhân tạo\",\"description\":\"Khám phá sự trỗi dậy của công nghệ nhân tạo và trí tuệ nhân tạo, những phát minh làm thay đổi hoàn toàn nền kinh tế, xã hội và cuộc sống con người trong tương lai.\"},{\"title\":\"Chương 8: Hành trình không ngừng\",\"description\":\"Tóm tắt lại hành trình phát triển của loài Homo sapiens từ quá khứ đến hiện tại, và dự đoán về tương lai của loài người trong thế giới ngày càng toàn cầu hóa và công nghệ hóa.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược các ý tưởng chính của sách, nhấn mạnh tầm quan trọng của hiểu biết về lịch sử để đối diện với những thách thức trong tương lai và sự phát triển của loài người.\"}]', '( 398 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F8b7a3550-324f-11ec-8078-377b9d853ee5%2FcoverImage%2F1634807776549_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Khoa học - Kỹ thuật', '2024-11-24 10:53:29', '2024-11-24 10:53:29'),
('cb295e5c-0aaf-4c87-912f-b380015adaa5', 'Nexus - Lược Sử Của Những Mạng Lưới Thông Tin Từ Thời Đại Đồ Đá Đến Trí Tuệ Nhân Tạo', 'Đây là câu chuyện về cách những mạng lưới thông tin đã kiến tạo và phá hủy thế giới, từ tác giả cuốn sách Sapiens: Lược Sử Loài Người.Cuốn sách Nexus mang lại cơ hội để mỗi người nhìn lại cách dòng chảy thông tin đã định hình chúng ta cũng như toàn thế gi', 'Yuval Noah Harari', 1090, '[{\"title\":\"Mở đầu\",\"description\":\"Giới thiệu về khái niệm \'mạng lưới\' và vai trò của chúng trong thế giới tự nhiên và xã hội.\"},{\"title\":\"Chương 1: Những mạng lưới đầu tiên\",\"description\":\"Lịch sử của các mạng lưới trong tự nhiên và xã hội từ thời cổ đại.\"},{\"title\":\"Chương 2: Quy luật 6 độ phân cách\",\"description\":\"Hiện tượng mọi người trên thế giới đều có thể kết nối qua trung gian của 6 người.\"},{\"title\":\"Chương 3: Sự phát triển của các mạng xã hội\",\"description\":\"Cách con người tổ chức mạng lưới xã hội từ nhóm nhỏ đến quy mô lớn.\"},{\"title\":\"Chương 4: Các mạng lưới tự nhiên\",\"description\":\"Mô hình mạng lưới trong sinh học và khoa học tự nhiên, như mạng lưới neuron trong não.\"},{\"title\":\"Chương 5: Internet và mạng thông tin hiện đại\",\"description\":\"Quá trình hình thành và phát triển của mạng internet, các cấu trúc và nguyên lý vận hành.\"},{\"title\":\"Chương 6: Sự nổi dậy của trí tuệ nhân tạo\",\"description\":\"Ứng dụng của mạng lưới trong AI và cách chúng tái tạo các hệ thống thông minh.\"},{\"title\":\"Chương 7: Mạng lưới và tương lai của nhân loại\",\"description\":\"Tầm nhìn về mạng lưới trong tương lai, bao gồm những cơ hội và thách thức.\"},{\"title\":\"Kết luận\",\"description\":\"Tóm lược các ý tưởng chính và nhấn mạnh vai trò không thể thiếu của mạng lưới trong mọi khía cạnh của cuộc sống.\"}]', '( 7 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F60c1eb90-84a0-11ef-8e3f-fdfb83cb6a39%2FcoverImage%2F1728300982474_3x.webp&w=1920&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Khoa học - Kỹ thuật', '2024-11-24 10:53:29', '2024-11-24 10:53:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `podcasts`
--

CREATE TABLE `podcasts` (
  `id` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `episode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`episode`)),
  `host` varchar(255) DEFAULT NULL,
  `durating` int(11) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `audiosrc` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `podcasts`
--

INSERT INTO `podcasts` (`id`, `Name`, `description`, `episode`, `host`, `durating`, `rating`, `imgsrc`, `audiosrc`, `genre`, `createdAt`, `updatedAt`) VALUES
('6b3a8041-6acd-4ce6-b4ca-7a4bc67597af', 'Xử Lý Khủng Hoảng Truyền Thông', 'Bằng kinh nghiệm 26 năm “thực chiến” trong ngành truyền thông và quan hệ công chúng Việt Nam, ông Lê Quốc Vinh chia sẻ các chiến lược phòng tránh, điều hướng và xử lý khủng hoảng truyền thông cho doanh nghiệp của bạn.', '[{\"title\":\"Tập 1. Xử lý khủng hoảng truyền thông\",\"description\":\"Bằng kinh nghiệm 26 năm “thực chiến” trong ngành truyền thông và quan hệ công chúng Việt Nam, ông Lê Quốc Vinh chia sẻ các chiến lược phòng tránh, điều hướng và xử lý khủng hoảng truyền thông cho doanh nghiệp của bạn.\"},{\"title\":\"Tập 2. Giải pháp xử lý khủng hoảng truyền thông\",\"description\":\"Bằng kinh nghiệm 26 năm “thực chiến” trong ngành truyền thông và quan hệ công chúng Việt Nam, ông Lê Quốc Vinh chia sẻ các chiến lược phòng tránh, điều hướng và xử lý khủng hoảng truyền thông cho doanh nghiệp của bạn.\"},{\"title\":\"Tập 3. Phòng ngừa khủng hoảng thay vì xử lý khủng hoảng\",\"description\":\"6 vấn đề cần quan tâm để phòng tránh khủng hoảng.\"},{\"title\":\"Tập 4. Lập kế hoạch xử lý khủng hoảng\",\"description\":\"4 giai đoạn Quản trị khủng hoảng và 10 bước giải quyết chi tiết.\"}]', 'Lê Quốc Vinh', 65, '( 2 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F11382380-b5f9-11ee-bea5-6b5b5491228c%2FcoverImage%2F1706256158574_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1732442960/y2mate.com_-_PodCourse_X%C3%A2y_D%E1%BB%B1ng_M%E1%BB%91i_Quan_H%E1%BB%87_Ch%E1%BA%A5t_L%C6%B0%E1%BB%A3ng_t%E1%BB%AB_Chuy%C3%AAn_gia_T%C3%A2m_l%C3%BD_V%C5%A9_Phi_Y%C3%AAn_v720P_1_z0vwaa.mp4a', 'Kinh Doanh & Khởi Nghiệp • Truyền thông', '2024-11-24 10:58:59', '2024-11-24 10:58:59'),
('71b2a8b9-83b3-440c-a7ad-e07f175c0355', ' Bình Dân Hóa Khoa Học Dữ Liệu', '- Bao nhiêu dữ liệu là đủ - Không cần phải đo lường chính xác mới sử dụng được dữ liệu - Cách tổ chức dữ liệu cho doanh nghiệp vừa và nhỏ', '[{\"title\":\"Tập 1. Dữ liệu là…?\",\"description\":\"Dữ liệu không phải là chủ đề công nghệ mà là chủ đề vận hành.\"},{\"title\":\"Tập 2. Quá Nhiều KPI, Rất Thiếu Những Insight\",\"description\":\"Việc đo lường và chỉ số không cần phải chính xác tuyệt đối mới có thể giúp đưa ra quyết định đúng đắn.\"},{\"title\":\"Tập 3. Ba Mô Hình Dữ Liệu\",\"description\":\"Mô hình phù hợp cho doanh nghiệp của bạn trong từng giai đoạn phát triển.\"},{\"title\":\"Tập 4. Hành Trình Dữ Liệu - Step 0, 1, 1+\",\"description\":\"Các câu hỏi cần trả lời khi xây dựng hệ thống dữ liệu cho doanh nghiệp.\"}]', 'Đặng Huỳnh Mai Anh', 85, '( 5 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F3d54ada0-e135-11ee-8a2c-a9200b3de616%2FcoverImage%2F1728474421283_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1730993626/utomp3.com_-_PodCourse_B%C3%ACnh_D%C3%A2n_H%C3%B3a_Khoa_H%E1%BB%8Dc_D%E1%BB%AF_Li%E1%BB%87u_t%E1%BB%AB_%C4%90%E1%BA%B7ng_Hu%E1%BB%B3nh_Mai_Anh_Lead_Data_Scientist_d0no6j.mp3', 'Công nghệ • Khoa học dữ liệu', '2024-11-24 10:58:59', '2024-11-24 10:58:59'),
('7bb10dce-eaa9-4637-866a-9e57cf7c1f3c', 'Đọc Sách Hiệu Quả: Món Quà Mang Cả Tương Lai', 'Trong thế giới số bị bao vây bởi một ma trận thông tin khổng lồ, việc đọc không phải lúc nào cũng mang lại hiệu quả. Nhận biết và chọn lọc đâu là thông tin chính xác trở thành yếu tố then chốt để tiếp thu cái mới mà sách là một trong những kho tàng tin cậ', '[{\"title\":\"Tập 1. Bí quyết đọc sách: Khơi nguồn trí tuệ\",\"description\":\"Tại sao việc đọc sách trở thành yếu tố quyết định cho sự phát triển cá nhân? Làm thế nào để chọn lọc sách phù hợp với mình? Cách thức xây dựng thói quen đọc sách hiệu quả.\"},{\"title\":\"Tập 2. Khám phá sách hay: Hành trình phát triển bản thân\",\"description\":\"Tại sao việc đọc sách trở thành yếu tố quyết định cho sự phát triển cá nhân? Làm thế nào để chọn lọc sách phù hợp với mình? Cách thức xây dựng thói quen đọc sách hiệu quả.\"},{\"title\":\"Tập 3. Nghệ thuật đọc sách: Chìa khóa của thành công\",\"description\":\"Tại sao việc đọc sách trở thành yếu tố quyết định cho sự phát triển cá nhân? Làm thế nào để chọn lọc sách phù hợp với mình? Cách thức xây dựng thói quen đọc sách hiệu quả.\"},{\"title\":\"Tập 4. Đọc sách thông minh: Xây dựng tương lai\",\"description\":\"Tại sao việc đọc sách trở thành yếu tố quyết định cho sự phát triển cá nhân? Làm thế nào để chọn lọc sách phù hợp với mình? Cách thức xây dựng thói quen đọc sách hiệu quả.\"},{\"title\":\"Tập 5. Thói quen đọc sách: Hành trang thành công\",\"description\":\"Tại sao việc đọc sách trở thành yếu tố quyết định cho sự phát triển cá nhân? Làm thế nào để chọn lọc sách phù hợp với mình? Cách thức xây dựng thói quen đọc sách hiệu quả.\"}]', 'Dương Thanh Tuyền', 77, '( 7 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2Fba795c40-8d15-11ef-b377-3f00e6395c46%2FcoverImage%2F1729230993413_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1732442960/y2mate.com_-_PodCourse_X%C3%A2y_D%E1%BB%B1ng_M%E1%BB%91i_Quan_H%E1%BB%87_Ch%E1%BA%A5t_L%C6%B0%E1%BB%A3ng_t%E1%BB%AB_Chuy%C3%AAn_gia_T%C3%A2m_l%C3%BD_V%C5%A9_Phi_Y%C3%AAn_v720P_1_z0vwaa.mp4', 'Phát triển bản thân', '2024-11-24 10:58:59', '2024-11-24 10:58:59'),
('a04da59d-2ba1-4ebe-a7ea-bd7a15c54236', 'Xây Dựng Mối Quan Hệ Chất Lượng', 'Tạo dựng những mối quan hệ chẳng còn là điều mới lạ hay quá khó khăn. Nhưng xây dựng một mối quan hệ thực sự chất lượng lại không hề dễ dàng. Vậy thế nào là một mối quan hệ chất lượng? Làm sao để thoát khỏi trạng thái cô đơn khi đang bị bủa vây bởi vô số ', '[{\"title\":\" Tập 1.Các mối quan hệ chìa khoá hanh phúc\",\"description\":\"Thực trạng kết nối lỏng lẻo dù được bao quanh bởi vô số các mối quan hệ. Những yếu tố cốt lõi hình thành nên một mối quan hệ chất lượng\"},{\"title\":\"Tập 2.Nhận thức - Điểm khởi đầu của hành trình\",\"description\":\"Giới thiệu hai loại nhận thức để xây dựng một mối quan hệ chất lượng. Cách thức rèn luyện để nâng cao khả năng nhận thức.\"},{\"title\":\"Tập 3. Thuốc giải cho cảm nhận cô đơn: Thực sự kết nối\",\"description\":\"“Đại dịch” cô đơn - Trạng thái càng đông người càng đứt kết nối, dẫn tới tỷ lệ trầm cảm tăng. Phương thức xây dựng kết nối thực thụ.\"},{\"title\":\"Tập 4.Giải quyết mâu thuẫn\",\"description\":\"Mâu thuẫn - tác nhân chủ chốt làm rạn nứt các mối quan hệ và để vượt qua mâu thuẫn, duy trì mối quan hệ.\"},{\"title\":\"Tập 5. Cùng nhau phát triển\",\"description\":\"Xây dựng mối quan hệ là việc của 2 phía. Cách thức để đồng hành, dẫn dắt và bảo vệ mối quan hệ.\"}]', 'Vũ Phi Yên', 125, '( 5 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2Fc1243c30-8550-11ef-badf-319c3c0bb7a8%2FcoverImage%2F1728376735603_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1732442960/y2mate.com_-_PodCourse_X%C3%A2y_D%E1%BB%B1ng_M%E1%BB%91i_Quan_H%E1%BB%87_Ch%E1%BA%A5t_L%C6%B0%E1%BB%A3ng_t%E1%BB%AB_Chuy%C3%AAn_gia_T%C3%A2m_l%C3%BD_V%C5%A9_Phi_Y%C3%AAn_v720P_1_z0vwaa.mp4', 'Phát triển bản thân - sức khoẻ', '2024-11-24 10:58:59', '2024-11-24 10:58:59'),
('c35afd98-149b-479e-8d1b-48449ca0e64e', 'Giao Tiếp Thuyết Phục', 'Giao tiếp là một trong những kỹ năng quan trọng và được dùng nhiều nhất. Tuy vậy, không phải ai cũng có thể giao tiếp một cách thoải mái, hiệu quả. Khóa học này sẽ cung cấp cho bạn phương thức rèn luyện để làm chủ kỹ năng này, thu hút những người xung qua', '[{\"title\":\"Tập 1. Nói sao cho người khác muốn nghe - 1. Đường đi của thông tin và cách tiếp nhận của não bộ\",\"description\":\"Giao tiếp là một trong những kỹ năng quan trọng và được dùng nhiều nhất. Tuy vậy, không phải ai cũng có thể giao tiếp một cách thoải mái, hiệu quả. Khóa học này sẽ cung cấp cho bạn phương thức rèn luyện để làm chủ kỹ năng này, thu hút những người xung quanh, xây dựng và phát triển các mối quan hệ. Khóa học được chia làm 2 phần với 2 mục tiêu chủ đạo của đối thoại: Nói sao cho người khác muốn nghe và Nghe sao cho người khác muốn nóiPhân tích quá trình tiếp nhận thông tin của não bộ và 3 cơ chế gây nên sự nhiễu loạn thông tin.\"},{\"title\":\"Tập 2. Phân tích quá trình tiếp nhận thông tin của não bộ và 3 cơ chế gây nên sự nhiễu loạn thông tin.\",\"description\":\"Cách thức mở đầu cuộc trò chuyện với người lạ. Phương thức tạo dựng và phát triển mối quan hệ.\"},{\"title\":\"Tập 3. Hiểu về phong cách tiếp thu\",\"description\":\"Phân loại các kiểu tiếp nhận thông tin và phương pháp truyền tải hiệu quả tương ứng.\"},{\"title\":\"Tập 4.Cách thức đưa ra phản hồi\",\"description\":\"Những nguyên tắc cơ bản trong quá trình phản hồi. Quy tắc phản hồi tích cực SBI.\"}]', 'Vũ Đức Trí Thể', 65, '( 2 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F799ad520-a30c-11ef-87cd-3b88d6bd640c%2FcoverImage%2F1731645944690_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1732442505/y2mate.com_-_PodCourse_Giao_Ti%E1%BA%BFp_Thuy%E1%BA%BFt_Ph%E1%BB%A5c_t%E1%BB%AB_Chuy%C3%AAn_gia_%C4%90%C3%A0o_t%E1%BA%A1o_V%C5%A9_%C4%90%E1%BB%A9c_Tr%C3%AD_Th%E1%BB%83_360P_mvv3yn.mp4', 'Phát triển cá nhân • Kinh doanh & Khởi nghiệp', '2024-11-24 10:58:59', '2024-11-24 10:58:59'),
('e3130ee0-8c20-40e2-abbf-35a58c202ab1', 'TikTok: Bí Quyết Xây Dựng Kênh Từ Người Trong Cuộc', 'Thoa Vũ cùng khách mời Long Chun chia sẻ những yếu tố tạo nên một short video hay, bí quyết bán hàng thành công trên TikTok, cùng những câu chuyện hậu trường thú vị.', '[{\"title\":\"Tập 1. TikTok: Bí quyết xây dựng kênh từ người trong cuộc\",\"description\":\"Thoa Vũ cùng khách mời Long Chun chia sẻ những yếu tố tạo nên một short video hay, bí quyết bán hàng thành công trên TikTok, cùng những câu chuyện hậu trường thú vị.\"},{\"title\":\"Tập 2.  Những điều cần biết khi tạo short video trên TikTok\",\"description\":\"Công thức cho một video thành công.\"},{\"title\":\"Tập 3. Tài khoản cá nhân và tài khoản doanh nghiệp\",\"description\":\"Chọn lựa tài khoản phù hợp với mục tiêu và tối ưu hóa kênh TikTok của bạn.\"},{\"title\":\"Tập 4. Multi-Chanel Network (MCN) & TikTok Shop Partnership (TSP)\",\"description\":\"Các lựa chọn cho creator muốn kiếm tiền trên TikTok.\"}]', 'Long Chun, Thoa Vũ', 85, '( 2 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F3d54ada0-e135-11ee-8a2c-a9200b3de616%2FcoverImage%2F1728474421283_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1732442960/y2mate.com_-_PodCourse_X%C3%A2y_D%E1%BB%B1ng_M%E1%BB%91i_Quan_H%E1%BB%87_Ch%E1%BA%A5t_L%C6%B0%E1%BB%A3ng_t%E1%BB%AB_Chuy%C3%AAn_gia_T%C3%A2m_l%C3%BD_V%C5%A9_Phi_Y%C3%AAn_v720P_1_z0vwaa.mp4', 'Kinh Doanh & Khởi Nghiệp • Marketing', '2024-11-24 10:58:59', '2024-11-24 10:58:59'),
('f63d1204-0bc1-4d3c-b365-49cfd476cf37', 'Năng Lực Tự Học', 'Nếu như việc trở thành người học suốt đời là một quyết định chủ động tìm kiếm, tiếp thu tri thức để thích nghi với sự biến đổi không ngừng của xã hội', '[{\"title\":\"Tập 1. Năng Lực Tự Học\",\"description\":\"Nếu như việc trở thành người học suốt đời là một quyết định chủ động tìm kiếm, tiếp thu tri thức để thích nghi với sự biến đổi không ngừng của xã hội thì năng lực tự học lại là một khả năng sẵn có kể từ khi chào đời, có thể phát triển nhưng cũng có thể bị mai một theo thời gian. Từ kiến thức và trải nghiệm thực tế cùng bề dày kinh nghiệm của người đã cống hiến cả đời cho sự nghiệp giáo dục, Tiến sĩ Bùi Trân Phượng mang đến khái niệm nguyên thủy của sự tự học.\"},{\"title\":\"Tập 2.Cội nguồn của khái niệm\",\"description\":\"Sự khác biệt trong quan niệm “dạy” và “học” giữa Á Đông và phương Tây dẫn đến sự khác biệt trong ý thức hệ về tự học.\"},{\"title\":\"Tập 3 Tự học là gì\",\"description\":\"Nhận thức cần có khi bước vào hành trình tự học và một số phương thức giúp việc tự học trở nên có hiệu quả.\"},{\"title\":\"Tập 4.Những con đường tự học\",\"description\":\"Tự học là một quá trình đòi hỏi sự chủ động, kiên trì và một tư duy cởi mở bằng cách khám phá những con đường tự học khác nhau.\"},{\"title\":\"Tập 5. Động lực - Thách thức - Thời gian\",\"description\":\"Nhận biết những trở lực từ bên ngoài cũng như động lực nội tại để vượt qua và duy trì việc học bền vững.\"}]', 'Bùi Trân Phương', 65, '( 2 Nhận xét )', 'https://fonos.vn//_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F1bbf3e80-98dc-11ef-afa5-5f1a8c18cfd6%2FcoverImage%2F1730525659752_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1732442960/y2mate.com_-_PodCourse_X%C3%A2y_D%E1%BB%B1ng_M%E1%BB%91i_Quan_H%E1%BB%87_Ch%E1%BA%A5t_L%C6%B0%E1%BB%A3ng_t%E1%BB%AB_Chuy%C3%AAn_gia_T%C3%A2m_l%C3%BD_V%C5%A9_Phi_Y%C3%AAn_v720P_1_z0vwaa.mp4', 'Phát triển cá nhân • Phát triển sự nghiệp', '2024-11-24 10:58:59', '2024-11-24 10:58:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('create-book.js'),
('create-podcast.js'),
('create-user.js'),
('create-userbook.js'),
('create-userpodcast.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userbooks`
--

CREATE TABLE `userbooks` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `BookId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `startAt` datetime DEFAULT NULL,
  `finishedAt` datetime DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userpodcasts`
--

CREATE TABLE `userpodcasts` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `podcastId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `startAt` datetime DEFAULT NULL,
  `finishedAt` datetime DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `zalo` varchar(255) DEFAULT NULL,
  `fbUrl` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `zalo`, `fbUrl`, `createdAt`, `updatedAt`) VALUES
('0c955cd6-772d-45c6-bd55-afd6b63c503e', 'tony han', NULL, 'duongvanphanls30@gmail.com', '$2a$10$qLFgGpcZIxP3MPfUtTKPmu4YRKQ.vADjgLL3mFCrWfmmqzjpDKq2e', NULL, NULL, '2024-11-17 11:15:07', '2024-11-17 11:22:01'),
('0e033ff0-71e7-41f5-87e6-fcaa400e2a86', 'tony pannn', NULL, 'duongvanphanls310@gmail.com', '$2a$10$HWNOJ6Mw8yDk4zhz3G69C.PuxATxgSVEhV9EYhtzMHv7YWz4JA1iu', NULL, NULL, '2024-11-17 11:16:16', '2024-11-17 11:16:16'),
('163d82cb-7689-40cb-b1f5-0d057a83882f', ' backend', NULL, 'levanlan350@gmail.com', '$2a$10$PXg.r10bnBO9ohP7EXdGUOj6wDuwyHoMDCNyK6uibQ.TD0t1SBG4.', NULL, NULL, '2024-11-17 11:31:35', '2024-11-17 11:31:35'),
('25a30b71-7d31-4b75-913c-da648daa09f7', ' backend', NULL, 'levanlanhoa50@gmail.com', '$2a$10$0oDY1hiMEqjYTOZnaB9b0.x1ltMmB4ZPAr20o8/ksYHw0nATOdzzy', NULL, NULL, '2024-11-17 11:32:39', '2024-11-17 11:32:39'),
('2b98600f-df4f-4fc7-a7bb-85272d55ab72', ' backend', NULL, 'lvphna50@gmail.com', '$2a$10$nTOgpG71bYlMHOARPLGXG.FHaCBKzNXH8QUwrVFJWCZX5ujnQPMei', NULL, NULL, '2024-11-17 11:37:47', '2024-11-17 11:37:47'),
('439a4e94-155d-447c-96b6-dea6de2a1d81', ' backend', NULL, 'levanlan@gmail.com', '$2a$10$HUgwzuqaux4//DZbu6EoE.Ta3gtEVosXfR0AfvastZd6YvE0iwYhi', NULL, NULL, '2024-11-17 11:30:20', '2024-11-17 11:30:20'),
('481bb561-0281-470f-9e2b-3a070a080c31', ' backend', NULL, 'Hoanghoa1@gmail.com', '$2a$10$WUExfWPP4dKt630/DdrDPuP7EQSybfVGLjLC6DYGZtAiOg82lgIRq', NULL, NULL, '2024-11-17 11:45:00', '2024-11-17 11:45:00'),
('812435d2-a823-4fb0-a122-eb2d6fec6bc7', ' backend', NULL, 'lvphdds50@gmail.com', '$2a$10$spXhOCfW25PqV.jU0ne5ZOqCZb9i53Js9NRKOBN9hOjMzn1O4oe1a', NULL, NULL, '2024-11-17 11:40:36', '2024-11-17 11:40:36'),
('a589fd52-f162-492e-b7d5-264e70febd65', 'Phandz', NULL, 'duongvanphan301@gmail.com', '$2a$10$b7OMm9ymTlRC4.lVJrvJtuipKZ3gOMwy3pkrpmpUaC8R2wuBmwk4e', NULL, NULL, '2024-11-17 11:23:24', '2024-11-17 11:23:24'),
('b1268ad6-5a24-4350-8168-689b3dd187c8', ' backend', NULL, 'duongvanphan30a1@gmail.com', '$2a$10$H9zkhDd5OaiMIUU.8RvuQelK4F0bWS9GQpQPSEjjDAsRBSKi8784e', NULL, NULL, '2024-11-17 11:26:55', '2024-11-17 11:26:55'),
('ba102797-6eef-4109-8dcf-a7ff58121bc7', ' backend', NULL, 'lvph50@gmail.com', '$2a$10$pnqcOwXH6MaAlqBqIpLdbOgNMZUzbHl4EvOV8pceWQw1inRih36XS', NULL, NULL, '2024-11-17 11:39:57', '2024-11-17 11:39:57'),
('beaa1507-3573-4d92-8778-5b2f036c8228', 'Ivan', NULL, 'duongvanphanls@gmail.com', '$2a$10$d1xPsEPDGBmyA2e405JLOeaEqw81vnEf3SbG7wX8Dka9seZ5Q2gjO', NULL, NULL, '2024-11-17 10:50:00', '2024-11-17 10:52:09'),
('c75ec421-a17b-4929-854a-e02fea751344', ' backend', NULL, 'Hoanghoa541@gmail.com', '$2a$10$3ej9FH4Zd.A4bUQnP7L8aeZZbQxWFlEkhTJai3gDYF4wE6kUSjqmS', NULL, NULL, '2024-11-17 11:46:21', '2024-11-17 11:46:21'),
('c9e72d32-c8ce-41d3-a3f9-066333cc7843', ' backend', NULL, 'leva50@gmail.com', '$2a$10$AOZI1aRdmYoc1G8OrzEUquszGg06aytIETD.qwkGSOyzh50NT7t6y', NULL, NULL, '2024-11-17 11:33:07', '2024-11-17 11:33:07'),
('ceff1f8b-b630-441d-a7ea-890fe6d7f2ec', ' backend', NULL, 'levphna50@gmail.com', '$2a$10$K1HgIzj7UkCJn9uovfCPVOmcevD4/pcuevRyo24IYNVlBCdWg85ka', NULL, NULL, '2024-11-17 11:35:37', '2024-11-17 11:35:37'),
('d1b2596b-3668-46bc-afaa-892aab74cbf4', ' backend', NULL, 'levanlan30@gmail.com', '$2a$10$Z894ayPQmtpYRusAzq2OaOlfPm.wVI4FKZnRhz.d9kcoamzN4WGaK', NULL, NULL, '2024-11-17 11:30:53', '2024-11-17 11:30:53'),
('d872108c-8706-45fe-87f9-892f68d90dbc', ' backend', NULL, 'duongvanpan1@gmail.com', '$2a$10$WTlssyXw5thOKB15bKCXk.jwu98oMIyj39hfXk8hhFQplYD4HF5v2', NULL, NULL, '2024-11-17 11:28:44', '2024-11-17 11:28:44'),
('e5470d66-0e26-40f8-9ecf-3aa5466bfb99', 'John idBssasa', '018515985625', NULL, '$2a$10$0OEUTDdZT9cHYqJXA/7z8O1njMGPYEvF1YVTpWy/rr6XgIFcCUMoe', NULL, NULL, '2024-11-03 18:53:19', '2024-11-03 18:53:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `userbooks`
--
ALTER TABLE `userbooks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userpodcasts`
--
ALTER TABLE `userpodcasts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `userbooks`
--
ALTER TABLE `userbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `userpodcasts`
--
ALTER TABLE `userpodcasts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
