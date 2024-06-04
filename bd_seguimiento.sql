/*
 Navicat Premium Data Transfer

 Source Server         : CONN_MYSQL
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : bd_seguimiento

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 04/06/2024 15:10:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
CREATE DATABASE bd_seguimiento;
USE bd_seguimiento;
-- ----------------------------
-- Table structure for estudiantes
-- ----------------------------
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE `estudiantes`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaNacimiento` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of estudiantes
-- ----------------------------
INSERT INTO `estudiantes` VALUES (1, 'Jose', 'Mamani', 'jose@mail.com', '2000-03-12');
INSERT INTO `estudiantes` VALUES (2, 'Monica', 'Martinez', 'monica@mail.com', '2000-02-02');
INSERT INTO `estudiantes` VALUES (3, 'Juan', 'Montes Villalva', 'juan@mail.com', '2003-02-13');
INSERT INTO `estudiantes` VALUES (4, 'Juan Jose', 'Bilbao', 'juanjose@mail.com', '2006-07-14');
INSERT INTO `estudiantes` VALUES (5, 'Rosa', 'Flores Moral', 'rosa@mail.com', '2000-01-11');
INSERT INTO `estudiantes` VALUES (6, 'Jhenny', 'Choque Torrez', 'jhenny@mail.com', '2023-04-25');
INSERT INTO `estudiantes` VALUES (7, 'Betty', 'Canaviri Ururi', 'betty@mail.com', '2000-06-22');
INSERT INTO `estudiantes` VALUES (8, 'Jose', 'Morales', 'josem@mail.com', '2001-07-12');

SET FOREIGN_KEY_CHECKS = 1;
