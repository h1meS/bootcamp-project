# bootcamp-project

During the 4-week bootcamp process, starting with the definition and content of DevOps, information was given on basic subjects such as the use of the Linux system and its commands, the place of python in DevOps, CI/CD and container. Apart from that, technologies used in DevOps such as Jenkins, Docker, Kubernetes, terraform and finally Google Cloud Platform were explained in practice. 

Bootcamp Proje
Task 1: İlk olarak bilgisayarımıza terraform ve Google Cloud CLI kurulumlarını gerçekleştirerek başlıyoruz. Bağlantımızı da kurduktan sonra eğitimde gördüğümüze benzer bir tf dosyası ile kurulumu gerçekleştiyoruz. İle olarak provider seçimini tabi ki google olarak yapıyoruz ve cluster için dilediğimiz region, zone bilgilerini giriyoruz. Daha sonrasında sanal bir network ve subnetworkler yaratıyoruz. Birçok subnet oluşturmak ağımızı gerçek bir network topolojisi haline getiriyor. Sonrasında ise asıl amacımız olan cluster kurulumu için gerekli parametreleri veriyoruz. Az önce oluşturduğumuz network bilgisini de burada kullanıyoruz. Daha sonra sanal bir kullanıcı diyebileceğimiz service account tanımlamasını yapıyoruz. Daha sonrasında node pool tanımına geçiyoruz. Burada kaç node pool içerisinde kaç tane node olacağı ve bu nodeların özelliklerini tanımlıyoruz. Ben üç node oluşturmayı seçtim ve özellik olarak preemtiple ve e2-medium tipinde olmasını istedim. Terraform init, plan, apply komutları ile 3 node içeren clusterım ayağa kalkmış oldu. 

Task 2-3-4: 
pvc dosyaları: mysql için bir storage class oluşturuldu ve pvc oluştururken referans olarak bu class kullanıldı. 
service dosyaları: bu dosyalar ile oluşturduğum mysql ve wordpress uygulamarını expose ettim. Wordpress için LoadBalancer kullanıldı.
deployment dosyaları: Olabildiğince parametreyi denemeye çalıştım. mysql için Rolling update, wordpress için ise username, password tanımlamaları yapıldı.
ingress: nip.io ile dışardan trafik alınması sağlamaya çalıştım.

Referanslar:
https://cloud.google.com/architecture/deploying-highly-available-postgresql-with-gke
https://acloudguru.com/hands-on-labs/deploying-wordpress-and-mysql-to-gke
https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/
