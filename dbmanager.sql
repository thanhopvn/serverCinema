-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 08, 2021 lúc 10:36 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbmanager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listphim`
--

CREATE TABLE `listphim` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `date` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `img` varchar(256) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `cast` varchar(256) NOT NULL,
  `directors` varchar(256) NOT NULL,
  `time` varchar(50) NOT NULL,
  `trailer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `listphim`
--

INSERT INTO `listphim` (`id`, `name`, `date`, `category`, `img`, `content`, `cast`, `directors`, `time`, `trailer`) VALUES
(1, 'Đại dịch cúm', '2021-01-31', 'Phim Hàn Quốc', 'https://www.cgv.vn/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/r/s/rsz_sh-main-poster.jpg', 'Đại Dịch Cúm (Chiếu lại ngày 31.12.2020) là phim điện ảnh tuy cũ song tính thời sự của nó vẫn còn nguyên vẹn trong bối cảnh năm 2020. Mọi việc bắt đầu từ chiếc xe container chở những người nhập cư bất hợp pháp vào Hàn Quốc, mang theo loại virus chết người H5N1. Khi tới Bundang (ngoại ô thủ đô Seoul), chiếc xe gặp nạn khi những kẻ lái xe phát hiện ra tất cả thành viên trong thùng xe đã chết, chỉ duy nhất một người còn sống nhưng trong người đã mang mầm bệnh. Virus lạ nhanh chóng phát tán khắp khu vực, khiến cho người nhiễm tử vong sau 36 giờ phơi nhiễm. Không còn lựa chọn nào khác, những nhà cầm quyền ra lệnh cách ly toàn bộ thành phố Bundang. Những người dân bị dồn vào các khu cách ly tập trung, không phân biệt khoẻ mạnh hay nhiễm bệnh càng khiến tình hình trở nên tồi tệ. Bác sĩ Kim In Hae (Soo Ae) phải chạy đua với thời gian để tìm ra vắcxin chữa bệnh cho con gái Mirre của cô và ngăn chặn virus. Đồng hành cùng In Hae là nhân viên cứu hộ quả cảm Kang Ji Gu (Jang Hyuk).', 'Jang Hyuk, Soo Ae, Park Min Ha, Yoo Hae Jin, Ma Dong Suk, Lee Hui Joon', 'Kim Sung Soo', '123 phút', 'http://d23dyxeqlo5psv.cloudfront.net/big_buck_bunny.mp4'),
(2, 'Thợ săn quoái vật', '2021-01-01', 'Phim Mỹ', 'https://upload.wikimedia.org/wikipedia/vi/4/44/Thewitchernetflix.jpeg', 'Monster Hunter được chuyển thể từ series game nổi tiếng cùng tên của Capcom. Trong phim, đội trưởng Artemis của nữ diễn viên Milla Jovovich (Resident Evil) và đồng đội đã vô tình bước qua một cánh cửa bí ẩn dẫn tới thế giới khác. Tại đây, họ phải chiến đấu với nhiều loài quái vật khổng lồ trong hành trình trở về thế giới. Đồng hành với họ trong trận chiến là nhân vật “Thợ săn” của nam diễn viên Tony Jaa (Ong Bak). Monster Hunter hứa hẹn sẽ là bom tấn hành động với những màn săn quái vật khổng lồ hoành tráng nhất năm 2020.', 'Milla Jovovich, Tony Jaa, T.I., Meagan Good, Diego Boneta, Josh Helman, Ron Perlman', 'Paul W.S. Anderson', '104 phút', 'http://d23dyxeqlo5psv.cloudfront.net/big_buck_bunny.mp4'),
(3, 'Nobita và những người bạn khủng long mới', '2021-01-02', 'Phim hoạt hình', 'https://i.pinimg.com/564x/33/bd/80/33bd8086ac40017f35e43d4560bf4f79.jpg', 'Trong lúc đang tham gia hoạt động khảo cổ ở một cuộc triễn lãm khủng long, Nobita tình cờ tìm thấy một viên hóa thạch và cậu tin rằng đây là trứng khủng long. Nobita liền mượn bảo bối thần kỳ \"khăn trùm thời gian\" của Doraemon để giúp viên hóa thạch trở lại thời của chúng nhưng ngay sau đó, quả trứng liền nở ra một cặp khủng long song sinh. Ngạc nhiên hơn hết, đây lại là loài khủng long mới hoàn toàn và chưa từng được phát hiện.', 'Không có', 'Kazuaki Imai', '110 phút', 'http://d23dyxeqlo5psv.cloudfront.net/big_buck_bunny.mp4'),
(4, 'Người cần quên phải nhớ', '2021-01-03', 'Phim Việt Nam', 'https://thegioidienanh.vn/stores/news_dataimages/thanhtan/092020/07/20/in_article/5821_NCQPN_Pre-teaser_noel2020_-_Copy.jpg', 'Người Cần Quên Phải Nhớ xoay quanh Loan, một nữ phóng viên năng động và nhạy bén. Nghi ngờ cái chết đột ngột của cha mình, cô quyết tâm sử dụng kiến thức nghiệp vụ nhằm vén màn bí mật bằng mọi giá. Trên hành trình “phá án”, Loan đã vô ý khiến Bình, gã giang hồ tưởng ngầu mà dễ mến bị chấn thương rồi mất trí nhớ. Trải qua hàng loạt tình huống dở khóc dở cười, hai người họ dần nảy sinh tình cảm với nhau.', 'Hoàng Yến Chibi, Trần Ngọc Vàng, HuyMe, Karen Nguyễn, Thái Hòa, Thanh Thuý, Nguyễn Dương, NSƯT Đức Hải...', 'Đỗ Đức Thịnh', '110 phút', 'http://d23dyxeqlo5psv.cloudfront.net/big_buck_bunny.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tittle` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `content` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `tittle`, `img`, `content`) VALUES
(1, 'Doraemon: Nobita và những bạn khủng long ra rạp sau Covid', 'https://image.thanhnien.vn/768/uploaded/minhnguyet/2020_11_13/still_a2_qnxg.jpg', 'Nhiều hoạt động được tổ chức nhân kỷ niệm 50 năm ngày ra đời Doraemon, chú mèo máy du hành ngược thời gian để giúp đỡ Nobita, một cậu bé học sinh tiểu học, hấp dẫn biết bao thế hệ độc giả. \r\n\r\nĐược biết tác phẩm dự kiến khởi chiếu ban đầu vào ngày 6.3 tại Nhật Bản. Tuy nhiên đến ngày 27.2, hãng thông báo hoãn chiếu bộ phim do ảnh hưởng từ đại dịch Covid-19. Ngày 14.7, nhà phát hành công bố áp phích quảng bá mới của bộ phim và bắt đầu chiếu ở khác thị trường châu Á như Hồng Kông (1.10), Thái Lan (19.11), Trung Quốc (11.12) và Việt Nam (18.12).\r\n\r\nKể từ chương truyện đầu tiên được ra mắt vào năm 1969, đến nay series Doraemon tròn 50 năm ra đời. Cũng như gần 40 năm phim điện ảnh Doraemon được phát hành kể từ Nobita no Kyōryū (1980), vì vậy Fujiko Pro quyết định chọn lại chủ đề khủng long vốn được cố họa sĩ Fujiko F. Fujio sinh thời yêu thích. Theo đó, trong lúc đang tham gia hoạt động khảo cổ ở một cuộc triển lãm khủng long, Nobita tình cờ tìm thấy một viên hóa thạch và cậu tin rằng đây là trứng khủng long. Nobita liền mượn bảo bối thần kỳ \"khăn trùm thời gian\" của Doraemon để giúp viên hóa thạch trở lại thời của chúng. Ngay sau đó, quả trứng liền nở ra một cặp khủng long song sinh.\r\n\r\nTrong thời gian diễn ra sự kiện mừng sinh nhật Doraemon tròn 50 tuổi, khán giả có thể chụp ảnh với mô hình Doraemon khổng lồ từ Nhật Bản, đọc miễn phí bộ sưu tập truyện tranh Doraemon đồ sộ, tham gia trò chơi hoạt náo... Sau TP.HCM, sự kiện mừng Doraemon 50 tuổi sẽ tới khán giả Bình Dương và Hà Nội.'),
(2, 'Các \'đế chế\' truyền thông giải trí vùng vẫy giữa đại dịch', 'https://image.thanhnien.vn/660/uploaded/hoangthang/2020_12_21/phimwonderwoman1984cuawarnerbrossecunglucramattrenhbomaxvataicacrapvaongay25thang12nayanhwarnerbros_umgr.jpg', 'Virus corona đã thay đổi Hollywood. Các hãng phim đã phải nhường sân chơi lại cho truyền hình trực tuyến. Một số cái tên cộm cán cụ thể trong ngành truyền thông giải trí thế giới đang bị tác động tai hại mất đi một khoản 13 tỉ USD bao gồm AT&T, Comcast, Disney và ViacomCBS trong quý kết thúc vào khoảng tháng 9. Lẽ tất nhiên, tất cả đều phải cựa quậy để cố tìm cách thoát ra chiếc vòng kim cô quái ác của cơn đại dịch này.\r\n\r\nMất mát ấy còn có khả năng tăng cao trong quý 4 lúc \"cơn bão\" corona thứ ba đang ập đến các quốc gia Âu, Mỹ. Hệ lụy sẽ còn kéo dài, chuỗi sản xuất tạm dừng, rạp chiếu phim đóng cửa, các nhà quảng cáo hủy hợp đồng và những thanh toán trợ cấp, thôi việc ào ạt đổ đến. Xét về mặt nhân lực, cho tới tháng 10 vừa qua, ngành công nghiệp truyền thông đã phải cắt đi 28.637 việc làm, một con số gây choáng váng nếu so với số lượng mất việc làm trong lĩnh vực này các năm trước là 10.201. Lần gần nhất ngành kinh doanh giải trí nghe nhìn bị ảnh hưởng nặng nề là trong cuộc suy thoái tài chính năm 2008, khi ngành truyền thông phải tái tuyển dụng 28.803 nhân lực sau kinh tế phục hồi.\r\n\r\nThế rồi mới đây cũng chính Warner Media gây chấn động Hollywood khi thông báo tất cả phim 2021 của Warner Bros sẽ vừa ra mắt trên dịch vụ phát trực tuyến của hãng, trên HBO Max, vừa đồng thời rạp chiếu ở Mỹ. Động thái đối phó đại dịch của họ bao gồm thanh lý bớt nhân lực và cả tổ chức lại công ty vệ tinh hoạt động kinh doanh phát trực tuyến. Bộ phim Stranger Things mới đây của hãng đã chứng tỏ được sự tiến bộ trong tư duy thay đổi ấy, nhưng so với Harry Potter và Chiến tranh giữa các vì sao trước đây e rằng chặng đường phía trước còn dài.'),
(3, '‘Soul’: \'Bom tấn\' hoạt hình thắp sáng niềm tin sau một năm sóng gió', 'https://image.thanhnien.vn/660/uploaded/minhnguyet/2020_12_24/s1_yhsj.jpg', 'Chọn đúng thời điểm Giáng sinh, Disney cho ra mắt “át chủ bài” Soul như một món quà kịp thời vực dậy tinh thần của mọi người sau một năm nhiều biến cố.\r\n\r\nSẽ không hề nói quá khi nhận xét Soul là một trong những bộ phim đáng xem nhất của năm 2020. Bởi nó không những mang tính chất động viên mà còn có tác dụng như một vị thuốc chữa lành. Tổng thể phim duy trì tốt âm hưởng feel-good (dễ chịu) sở trường của Disney bằng những miếng hài duyên dáng, nét vẽ tinh nghịch đầy sống động. Phần âm nhạc được lồng ghép tinh tế, âm thanh nền được thiết kế chỉn chu nhằm tạo nên không gian đời sống chân thực nhất. Cài cắm trong từng khung hình, mỗi tình tiết là vô số những thông điệp về tình yêu cuộc sống, tình cảm gia đình, đam mê cho đến quy luật của vũ trụ...Khán giả có thể vừa cười sảng khoái, vừa chiêm nghiệm, vừa rơi nước mắt khi thưởng thức bộ phim. Sở hữu nhiều tầng nghĩa nhưng Soul mang đến cảm giác rất vừa vặn cho người xem, không hề bị khiên cưỡng hay quá tải. Tất cả các chi tiết, thông điệp đều được đan cài rất chặt chẽ và hòa hợp như một bản giao hưởng. Phần nội dung với nhiều tầng lớp ý nghĩa có thể sẽ khá thách thức cho đối tượng khán giả thiếu nhi. Tuy nhiên, nếu được hướng dẫn và giải thích cặn kẽ, Soul sẽ là một bài học về quy luật cuộc sống rất hữu ích dành cho các bé. Tóm lại, Soul là một tác phẩm hoạt hình đột phá trong tư duy, xuất sắc trong cách thể hiện và ra mắt rất đúng thời điểm, có khả năng sẽ tạo nên cơn sốt phòng vé cho mùa Giáng sinh năm nay.\r\n'),
(4, 'Tiến Luật hộ tống Thu Trang họp fan \'Chị Mười Ba\'', 'https://image.thanhnien.vn/660/uploaded/haoph/2020_12_21/thutrang_sevf.jpg', 'Thu Trang, Tiến Luật tình tứ tại buổi fan meeting phim Chị Mười Ba: 3 ngày sinh tử.\r\n\r\nTại sự kiện fan meeting (buổi giao lưu với người hâm mộ) Chị Mười Ba, khán giả liên tục bất ngờ mà chương trình mang lại. Từ màn trình diễn DJ trực tiếp trên sân khấu suốt 2 tiếng chỉ để hâm nóng không khí, đến những màn trình diễn của ca sĩ Phương Thanh, bộ đôi Huỳnh James - Pjnboys, Quân AP, Mikeezy, Joka31z...\r\n\r\nBuổi fan meeting chính thức bùng nổ khi những diễn viên chính của phim xuất hiện. Đặc biệt, khi diễn viên Thu Trang, Tiến Luật và Kiều Minh Tuấn bước lên \"thảm đỏ\". Trước sự ủng hộ nhiệt tình của khán giả, diễn viên Thu Trang lần đầu biểu diễn rap khiến fan \"dậy sóng\".\r\n\r\nChị Mười Ba: 3 ngày sinh tử mở ra một bối cảnh mới cùng một câu chuyện mới cho cả Xã đoàn sau khi chuyển địa bàn lên Đà Lạt. Tưởng đâu cuộc sống của Kẽm Gai (Anh Tú đóng) được bình yên, nào ngờ anh lại bị cuốn vào vòng xoáy thù hận khi bất ngờ có mặt ở nơi Đức Mát (Phát La diễn) bị giết. Tình ngay lý gian, Kẽm Gai trở thành đối tượng tình nghi số một trong án mạng lần này và bị truy đuổi bởi phe đàn anh Đức Mát (Kiều Minh Tuấn thủ vai). Rùng rợn nhất trailer là nhân vật của Kiều Minh Tuấn cầm một hũ hài cốt có in ảnh và tên Kẽm Gai.\r\nLuôn tin tưởng đàn em của mình và một mực cho rằng Kẽm Gai không giết người, chị Mười Ba (Thu Trang đảm nhận) ra sức tìm lại công lý, đối đầu với một băng đảng mới. Chị Mười Ba: 3 ngày sinh tử chính thức khởi chiếu từ ngày 25.12.'),
(5, 'Phim Trung Quốc bị tố ‘mượn ý tưởng’ phim nhà Marvel', 'https://image.thanhnien.vn/660/uploaded/trucdl/2020_12_26/phimtrungquocdaophimavengerdoctorstrange_voao.jpg', 'Ngày 25.12, Âm dương sư: Tình nhã tập chính thức công chiếu trong sự kỳ vọng lớn của khán giả. Trang 163 cho hay tác phẩm đã có các suất chiếu trước và đạt doanh thu ban đầu được hơn 30 triệu nhân dân tệ (cỡ 106 tỉ đồng). Dù vậy, ngay từ khi ra mắt, đứa con tinh thần của đạo diễn Quách Kính Minh đã nhận về nhiều ý kiến trái chiều. Đặc biệt, phần kỹ xảo bị chê bai là y chang phim Doctor Strange (Phù thủy tối thượng) và Avengers: End Game.\r\n\r\nKhán giả cũng như hàng loạt cơ quan truyền thông Trung Quốc đều bày tỏ sự nghi ngờ Âm dương sư: Tình nhã tập đã đạo nhái Doctor Strange và Avengers 4, nhất là chi tiết “cánh cổng dịch chuyển không gian tức thời” vòng tròn. Trên các trang tin và mạng xã hội, hình ảnh của hai bộ phim được đem ra so sánh để người xem có thể thấy rõ nét tương đồng khó chối cãi. Chưa kể là cách vẽ, tính chất và công dụng của những “cánh cửa” này trong phim Trung Quốc y hệt như của sê-ri phim nhà Marvel, chỉ khác nhau về màu sắc.\r\n\r\nNhiều dân mạng nhận xét hiệu ứng của Âm dương sư: Tình nhã tập quá giống Doctor Strange và Avengers phần mới nhất. Thậm chí, tạo hình của một số nhân vật của tác phẩm điện ảnh Hoa ngữ cũng tựa tựa như dàn sao Hollywood trong loạt phim siêu anh hùng đình đám hãng Marvel. Do đó, không ít khán giả chế giễu và khẳng định đạo diễn Quách Kính Minh đã ăn cắp ý tưởng từ phim Hollywood để ghép vào Âm dương sư: Tình nhã tập. Trước các chỉ trích này, nhà làm phim 37 tuổi và ê-kíp vẫn chưa phản hồi.'),
(6, 'Shia LaBeouf bị loại khỏi phim mới sau scandal đánh bạn gái', 'https://image.thanhnien.vn/660/uploaded/congthang/2020_12_25/sb-01_dhey.jpg', 'Hồi tháng 4.2020, Olivia Wilde đã công bố những ngôi sao xác nhận tham gia bộ phim kinh dị tâm lý Don\'t Worry Darling do cô làm đạo diễn, bao gồm Florence Pugh và Shia LaBeouf. Sau thành công của Booksmart (2019), dự án điện ảnh Don\'t Worry Darling của Olivia Wilde thu hút sự chú ý của công chúng.\r\n\r\nĐến tháng 9, nhà sản xuất gây xôn xao khi công bố Harry Styles sẽ thay thế Shia LaBeouf vào vai nam chính của phim. Theo tờ Deadline ở thời điểm đó, tài tử 34 tuổi \"rời dự án do xung đột lịch trình\". Tuy nhiên, bài viết đăng tải ngày 24.12 của tờ Variety lại chỉ ra rằng lý do Shia LaBeouf bị sa thải là vì cư xử không đúng mực.\r\n\r\nNgười này cũng ca ngợi Olivia Wilde với nỗ lực tạo ra môi trường làm việc thoải mái, không áp đặt chính sách khó hiểu cho nhân viên. Như vậy, Shia LaBeouf thực tế đã bị sa thải khỏi phim Don\'t Worry Darling khoảng 3 tháng tính đến thời điểm hiện tại. Cho đến nay, cả đơn vị phát hành phim là New Line Cinema lẫn đại diện của Oliva Wilde và Shia LaBeouf vẫn chưa lên tiếng về sự việc.\r\nDù quá trình ghi hình vẫn chưa bắt đầu nhưng rất nhiều thành viên trong đoàn làm phim cho biết Shia LaBeouf đã có rất nhiều hành vi tồi tệ đối với những người xung quanh. Ngoài ra, nam diễn viên cũng xảy ra tranh cãi với êkíp Don\'t Worry Darling, bao gồm cả Olivia Wilde. “Anh ấy không phải là một người dễ hợp tác”, một nguồn tin tiết lộ với tờ Variety.'),
(7, 'Gal Gadot lần đầu nói về quyết định đóng nữ hoàng Cleopatra', 'https://image.thanhnien.vn/660/uploaded/congthang/2020_12_25/1582650874_jnix.jpg', 'Tháng 10 vừa qua Gal Gadot khiến công chúng xôn xao khi xác nhận sẽ vào vai Cleopatra trong bộ phim dã sử kể về cuộc đời nữ hoàng Ai Cập. Hoa hậu người Israel viết trên trang cá nhân: \"Tôi hào hứng trước mỗi dự án phim mới, thích cảm giác hồi hộp khi mang lại sức sống cho những câu chuyện mới. Cleopatra là nhân vật tôi muốn đóng từ lâu\".\r\nGal Gadot lần đầu nói về quyết định đóng nữ hoàng Cleopatra  - ảnh 1\r\nGal Gadot đã hợp tác với Patty Jenkins trong hai phần phim Wonder Woman\r\n\r\nThông tin này khiến công chúng xôn xao. Nhiều người cho rằng vai Cleopatra nên được trao cho một diễn viên da màu vì nhân vật là người gốc Phi. Thậm chí một bộ phận khán giả còn lên án mạnh mẽ quyết định này, cho rằng đây là hành vi \"tẩy trắng\" vốn nhức nhối ở Hollywood nhiều năm qua. Trong quá khứ, nhiều nữ diễn viên da trắng như Claudette Colbert, Vivien Leigh hay Elizabeth Taylor từng hóa thân thành nữ hoàng Cleopatra.\r\n\r\nMỹ nhân người Israel lần đầu tiên lên tiếng về sự việc thông qua cuộc phỏng vấn với tờ BBC Arabic. \"Cleopatra là người Macedonia, đó là sự thật nếu bạn muốn biết. Chúng tôi đã tìm kiếm một nữ diễn viên gốc Macedonia phù hợp với hình ảnh Cleopatra. Nhưng người ấy vẫn chưa xuất hiện còn tôi thì luôn say mê nữ hoàng Ai Cập”, Gal Gadot nói. Cô chia sẻ thêm: \"Tôi có rất nhiều bạn bè khắp thế giới. Họ thuộc nhiều chủng tộc và theo nhiều tôn giáo khác nhau. Nhưng chung quy lại tất cả đều là con người đối với tôi\". Hoa hậu Israel 2004 bày tỏ mong muốn tôn vinh di sản lịch sử của vị nữ hoàng mà cô vô cùng ngưỡng mộ thông qua tác phẩm. \"Nhưng bạn biết đấy, ai cũng có thể làm bộ phim này. Tôi có đam mê và tôi sẽ thực hiện dự án của riêng mình\", nữ diễn viên kết luận.\r\nĐược biết, bộ phim vốn là ý tưởng của Gal Gadot, xây dựng theo hướng sử thi. Mỹ nhân 35 tuổi mời Patty Jenkins, người từng hợp tác với cô trong hai phần phim Wonder Woman về làm đạo diễn. Theo Deadline, Paramount đã đánh bại các đối thủ như Apple, Universal, Warner Bros. và Netflix để giành quyền phát hành tác phẩm.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `password`, `username`, `address`, `phone`, `email`, `birthday`) VALUES
(3, '12345', 'admin', 'HaNoi', '0123565656', 'admin@gmail.com', '23-04-2000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uudai`
--

CREATE TABLE `uudai` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `uudai`
--

INSERT INTO `uudai` (`id`, `name`, `category`, `img`) VALUES
(1, 'XEM BOM TẤN: chỉ 1.000đồng/vé khi thanh toán qua MOMO', 'phim', 'https://static.mservice.io/blogscontents/momo-upload-api-770x370_1k_galaxy%20-%20copy-190510142019.jpg'),
(2, 'Vé xem phim 1K khi thanh toán qua ViettelPay', 'phim', 'https://img.kam.vn/images/414x0/6b24c7707fe3421c9d4533013729b0a1/image/viettelpay-ve-xem-phim-cgv-gia-chi-1k-mua-qua-viettelpay.jpg'),
(3, 'HOT: Ngày hạnh phúc vé chỉ từ 45K', 'phim', 'https://blogs.gannha.com/wp-content/uploads/2020/06/Thumbnail-Blog.jpg'),
(4, 'Mua 2 vé xem phim 2D, tặng combo bỏng nước miễn phí', 'dichvu', 'https://vtcpay.vn/media2/upload/images/news/images/650x340(19).jpg'),
(5, 'Ngày tri ân: Miễn phí bắp và nước khi mua 2 vé xem phim', 'dichvu', 'https://www.galaxycine.vn/media/wysiwyg/images/NgayTriAn/1135x660.jpg'),
(6, 'Uống thả ga, Upsize miễn phí nhanh tay nào', 'dichvu', 'https://rapchieuphim.com/photos/promotion/uong-tha-ga-xem-phim-cuc-da-content.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `listphim`
--
ALTER TABLE `listphim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `uudai`
--
ALTER TABLE `uudai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `listphim`
--
ALTER TABLE `listphim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `uudai`
--
ALTER TABLE `uudai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
