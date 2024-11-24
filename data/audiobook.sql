-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2024 lúc 05:05 PM
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

INSERT INTO `books` (`id`, `name`, `description`, `author`, `durating`, `rating`, `imgsrc`, `audiosrc`, `genre`, `createdAt`, `updatedAt`) VALUES
('278e00b1-46cb-4937-8d46-abf9a27e1949', 'Hai Số Phận', 'Jeffrey Archer viết cuốn tiểu thuyết này dựa theo câu chuyện của anh em Cain và Abel trong Kinh Thánh Cựu Ước. Truyện kể về William Kane, con một triệu phú nổi tiếng trên đất Mỹ, lớn lên trong nhung lụa, người kia là Abel Rosnovski, đứa trẻ không rõ xuất ', 'Jeffrey Archer', 1292, '( 242 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F34d68260-bf7b-11ee-9660-fbe47ef90e4c%2FcoverImage%2F1706624638346_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Văn học đương đại', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('4d195710-1be9-45e4-b711-aa849d8219bc', 'Sapiens: Lược Sử Loài Người', 'Sapiens: Lược Sử Loài Người được phát hành bản tiếng Anh lần đầu tiên vào năm 2014 và nhanh chóng được các tỷ phú Bill Gates, Mark Zuckerberg, cựu Tổng thống Barack Obama yêu thích, đưa vào danh sách khuyên đọc. Năm 2016, Bill Gates từng viết rằng ông yêu', 'Yuval Noah Harari', 971, '( 398 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F8b7a3550-324f-11ec-8078-377b9d853ee5%2FcoverImage%2F1634807776549_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Khoa học - Kỹ thuật', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('6c97ba9f-9b41-4234-83e5-4082bbb87d3f', 'Bốn Thỏa Ước', 'Trong Bốn thỏa ước, Don Miguel Ruiz tiết lộ nguồn gốc của niềm tin tự giới hạn bản thân cướp đi niềm vui và tạo ra đau khổ không cần thiết. Dựa trên sự khôn ngoan của Toltec cổ xưa, Bốn thỏa ước đưa ra một quy tắc ứng xử mạnh mẽ có thể nhanh chóng biến cu', 'Janet Mills, Don Miguel Ruiz', 155, '( 37 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F8db72ee0-7446-11ef-b0a4-598e47369007%2FcoverImage%2F1726503184590_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Tâm lý - Tâm linh', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('9fbd2e76-e179-4ea2-a0a5-9868d5ebb245', 'Những Quy Luật Của Bản Chất Con Người', 'Từ tác giả của các tác phẩm 48 nguyên tắc chủ chốt của quyền lực; 33 chiến lược của chiến tranh; Nghệ thuật quyến rũ; Nguyên tắc 50 - không sợ hãi; Làm chủ... đã được dịch và xuất bản tại Việt Nam, và nhận được sự ủng hộ nhiệt tình của độc g', 'Robert Greene', 1887, '( 106 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2Ff5209260-b5d8-11ee-a9b6-859f5918a94e%2FcoverImage%2F1705565392519_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Kinh doanh - Quản trị', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('a56d97fe-4eda-48f6-baf0-df5333c4dedd', 'Khắc đi...Khắc đến', 'Từ Hà Nội đến Paris, từ Singapore đến Bỉ, từ Thụy Sĩ đến Hong Kong, cuốn sách là cuộc hành trình của một người phụ nữ tha thiết mong muốn mang hội họa Việt Nam ra thế giới. Bà Nguyễn Thị Xuân Phượng - ở tuổi 95, ra mắt cuốn hồi ký thứ hai của mình, ghi lạ', 'Xuân Phượng', 278, '( 43 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F2026fa70-7998-11ef-9587-1594d5304e50%2FcoverImage%2F1727087975319_2x.webp&w=750&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'văn học đương đại', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('c1564193-2f8e-4aef-9c2e-486a72e373cf', 'Súng, Vi Trùng Và Thép', 'Súng, Vi Trùng Và Thép: Định Mệnh Của Các Xã Hội Loài Người là cuốn sách nổi tiếng nhất của Jared Diamond, được xuất bản lần đầu vào năm 1997. Nội dung sách giải thích vì sao các nền văn minh Á – Âu (bao gồm cả Bắc Phi) lại tồn tại được, cũng như đã chinh', 'Jared Diamond', 1261, '( 6 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2Fff40bed0-7f4c-11ef-8bf7-f50f82d49158%2FcoverImage%2F1727764330276_3x.webp&w=1920&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Khoa học - Kỹ thuật', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('ce253cc7-4d45-4365-8b9d-572e7406caa9', 'Vừa Vặn: Thuận Theo Lẽ Tự Nhiên - Một Diễn Giải Tinh Thần Về Trang Tử', 'Vừa Vặn: Thuận Theo Lẽ Tự Nhiên – Một Diễn Giải Tinh Thần Về Trang Tử là cuốn sách chứa đựng nhiều suy ngẫm của Osho về Trang Tử cùng những lời dạy, những câu chuyện ngụ ngôn tưởng như đã quen thuộc, nhưng hóa ra lại bao hàm nhiều tầng nghĩa khác.Thông qu', 'Osho', 646, '( 25 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2Fcd526350-7c19-11ef-8686-ddd39f29040a%2FcoverImage%2F1727363573253_3x.webp&w=1920&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Tâm lý - Tâm linh', '2024-11-03 17:40:47', '2024-11-03 17:40:47'),
('f4c6436c-bc6d-43ea-a662-2037451706d8', 'Nexus - Lược Sử Của Những Mạng Lưới Thông Tin Từ Thời Đại Đồ Đá Đến Trí Tuệ Nhân Tạo', 'Đây là câu chuyện về cách những mạng lưới thông tin đã kiến tạo và phá hủy thế giới, từ tác giả cuốn sách Sapiens: Lược Sử Loài Người.Cuốn sách Nexus mang lại cơ hội để mỗi người nhìn lại cách dòng chảy thông tin đã định hình chúng ta cũng như toàn thế gi', 'Yuval Noah Harari', 1090, '( 7 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fbooks%2F60c1eb90-84a0-11ef-8e3f-fdfb83cb6a39%2FcoverImage%2F1728300982474_3x.webp&w=1920&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1727879462/sachdongchay_lemecu.mp3', 'Khoa học - Kỹ thuật', '2024-11-03 17:40:47', '2024-11-03 17:40:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `podcasts`
--

CREATE TABLE `podcasts` (
  `id` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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

INSERT INTO `podcasts` (`id`, `Name`, `description`, `host`, `durating`, `rating`, `imgsrc`, `audiosrc`, `genre`, `createdAt`, `updatedAt`) VALUES
('1399fa68-2890-4bae-a4d9-d66dc9a78b0e', 'TikTok: Bí Quyết Xây Dựng Kênh Từ Người Trong Cuộc', 'Thoa Vũ cùng khách mời Long Chun chia sẻ những yếu tố tạo nên một short video hay, bí quyết bán hàng thành công trên TikTok, cùng những câu chuyện hậu trường thú vị.', 'Long Chun, Thoa Vũ', 85, '( 2 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F3d54ada0-e135-11ee-8a2c-a9200b3de616%2FcoverImage%2F1728474421283_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1730993943/utomp3.com_-_PodCourse_TikTok_B%C3%AD_Quy%E1%BA%BFt_X%C3%A2y_D%E1%BB%B1ng_K%C3%AAnh_t%E1%BB%AB_Chuy%C3%AAn_gia_Thoa_V%C5%A9_v%C3%A0_Kh%C3%A1ch_m%E1%BB%9Di_Long_Chun_v8pr1g.mp3', 'Kinh Doanh & Khởi Nghiệp • Marketing', '2024-11-07 15:53:55', '2024-11-07 15:53:55'),
('3191ec86-056c-4f7d-88d1-178b8765f3cf', '\"Bình Dân Hóa\" Khoa Học Dữ Liệu', '- Bao nhiêu dữ liệu là đủ - Không cần phải đo lường chính xác mới sử dụng được dữ liệu - Cách tổ chức dữ liệu cho doanh nghiệp vừa và nhỏ', 'Đặng Huỳnh Mai Anh', 85, '( 5 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F3d54ada0-e135-11ee-8a2c-a9200b3de616%2FcoverImage%2F1728474421283_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1730993626/utomp3.com_-_PodCourse_B%C3%ACnh_D%C3%A2n_H%C3%B3a_Khoa_H%E1%BB%8Dc_D%E1%BB%AF_Li%E1%BB%87u_t%E1%BB%AB_%C4%90%E1%BA%B7ng_Hu%E1%BB%B3nh_Mai_Anh_Lead_Data_Scientist_d0no6j.mp3', 'Công nghệ • Khoa học dữ liệu', '2024-11-07 15:53:55', '2024-11-07 15:53:55'),
('3310d904-31ac-460d-baa0-a90ee416af22', 'Xây Dựng Mối Quan Hệ Chất Lượng', 'Tạo dựng những mối quan hệ chẳng còn là điều mới lạ hay quá khó khăn. Nhưng xây dựng một mối quan hệ thực sự chất lượng lại không hề dễ dàng. Vậy thế nào là một mối quan hệ chất lượng? Làm sao để thoát khỏi trạng thái cô đơn khi đang bị bủa vây bởi vô số ', 'Vũ Phi Yên', 125, '( 5 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2Fc1243c30-8550-11ef-badf-319c3c0bb7a8%2FcoverImage%2F1728376735603_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1730993604/utomp3.com_-_PodCourse_X%C3%A2y_D%E1%BB%B1ng_M%E1%BB%91i_Quan_H%E1%BB%87_Ch%E1%BA%A5t_L%C6%B0%E1%BB%A3ng_t%E1%BB%AB_Chuy%C3%AAn_gia_T%C3%A2m_l%C3%BD_V%C5%A9_Phi_Y%C3%AAn_utwfvw.mp3', 'Phát triển bản thân - sức khoẻ', '2024-11-07 15:53:55', '2024-11-07 15:53:55'),
('7ea20b3d-8736-4350-8426-e3b2b39aeedf', 'Xử Lý Khủng Hoảng Truyền Thông', 'Bằng kinh nghiệm 26 năm “thực chiến” trong ngành truyền thông và quan hệ công chúng Việt Nam, ông Lê Quốc Vinh chia sẻ các chiến lược phòng tránh, điều hướng và xử lý khủng hoảng truyền thông cho doanh nghiệp của bạn.', 'Lê Quốc Vinh', 65, '( 2 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2F11382380-b5f9-11ee-bea5-6b5b5491228c%2FcoverImage%2F1706256158574_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1730993997/utomp3.com_-_PodCourse_X%E1%BB%AD_L%C3%BD_Kh%E1%BB%A7ng_Ho%E1%BA%A3ng_Truy%E1%BB%81n_Th%C3%B4ng_t%E1%BB%AB_Chuy%C3%AAn_gia_L%C3%AA_Qu%E1%BB%91c_Vinh_idc7yr.mp3', 'Kinh Doanh & Khởi Nghiệp • Truyền thông', '2024-11-07 15:53:55', '2024-11-07 15:53:55'),
('8195eb46-42dc-4684-9962-1d091367f057', 'Đọc Sách Hiệu Quả: Món Quà Mang Cả Tương Lai', 'Trong thế giới số bị bao vây bởi một ma trận thông tin khổng lồ, việc đọc không phải lúc nào cũng mang lại hiệu quả. Nhận biết và chọn lọc đâu là thông tin chính xác trở thành yếu tố then chốt để tiếp thu cái mới mà sách là một trong những kho tàng tin cậ', 'Dương Thanh Tuyền', 77, '( 7 Nhận xét )', 'https://fonos.vn/_next/image?url=https%3A%2F%2Ffonos-cdn.azureedge.net%2Fcourses%2Fba795c40-8d15-11ef-b377-3f00e6395c46%2FcoverImage%2F1729230993413_4x.webp&w=3840&q=75', 'https://res.cloudinary.com/dwjrf9fnz/video/upload/v1730993245/utomp3.com_-_PodCourse_%C4%90%E1%BB%8Dc_S%C3%A1ch_Hi%E1%BB%87u_Qu%E1%BA%A3_M%C3%B3n_Qu%C3%A0_Mang_C%E1%BA%A3_T%C6%B0%C6%A1ng_Lai_t%E1%BB%AB_Nh%C3%A0_b%C3%A1o_Nh%C3%A0_v%C4%83n_D%C6%B0%C6%A1ng_T', 'Phát triển bản thân', '2024-11-07 15:53:55', '2024-11-07 15:53:55');

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
