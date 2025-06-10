Sürekli Entegrasyon (Github Actions) işlemlerini görüntülemek ve Test Coverage raporunu indirmek için tıklayınız ;

[![Java CI with Maven](https://github.com/cek4434/ileri-java-project/actions/workflows/maven.yaml/badge.svg)](https://github.com/cek4434/ileri-java-project/actions/workflows/maven.yml)

---

# Stok Takip Sistemi (Spring Boot, H2, Docker)

## Proje Hakkında
Bu proje, Java Spring Boot ile geliştirilmiş bir stok takip REST API'sidir. H2 veritabanı kullanır ve Docker ile kolayca deploy edilebilir. Postman veya benzeri araçlarla test edilebilir.

## Kullanılan Java Konuları
- Java 8 Stream & Lambda
- Koleksiyonlar ve OOP
- Generic programlama
- Multithread (toplu ürün ekleme)
- Spring Boot (REST API)
- Maven
- H2 veritabanı
- Docker

## Çalıştırma

### 1. Maven ile derleme
```
mvn clean package
```

### 2. Uygulamayı başlatma
```
java -jar target/*.jar
```

### 3. Docker ile çalıştırma
```
docker build -t ileri-java-project .
docker run -p 5000:5000 ileri-java-project
```

## API Endpointleri
- `GET /api/v1/products` — Tüm ürünleri getirir
- `POST /api/v1/products` — Yeni ürün ekler
- `PUT /api/v1/products/{id}` — Ürün günceller
- `DELETE /api/v1/products/{id}` — Ürün siler
- `GET /api/v1/products/search?name=...` — Ürün arar
- `POST /api/v1/products/bulk` — Toplu ürün ekler (multithread)

## H2 Konsolu
- [http://localhost:5000/h2-console](http://localhost:5000/h2-console)
- JDBC URL: `jdbc:h2:mem:final-project`
- Kullanıcı adı: `sa` (şifre yok)

## Postman ile Test
Tüm endpointler JSON formatında çalışır. Örnek istekler için `Final Project.postman_collection.json` dosyasını kullanabilirsiniz.

---
