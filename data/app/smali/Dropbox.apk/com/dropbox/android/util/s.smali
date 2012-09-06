.class final Lcom/dropbox/android/util/s;
.super Lcom/dropbox/android/util/r;
.source "panda.py"


# direct methods
.method public constructor <init>(Ldbxyzptlk/h/g;)V
    .registers 6
    .parameter

    .prologue
    .line 936
    const-string v0, "open.log"

    invoke-direct {p0, v0}, Lcom/dropbox/android/util/r;-><init>(Ljava/lang/String;)V

    .line 937
    const-string v0, "APP_VERSION"

    iget-object v1, p1, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 938
    const-string v0, "USER_ID"

    iget-object v1, p1, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 939
    const-string v0, "DEVICE_ID"

    iget-object v1, p1, Ldbxyzptlk/h/g;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 940
    const-string v0, "PHONE_MODEL"

    iget-object v1, p1, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 941
    const-string v0, "ANDROID_VERSION"

    iget-object v1, p1, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 942
    const-string v0, "MANUFACTURER"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 944
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v2

    .line 945
    const/4 v1, 0x0

    .line 946
    const/4 v0, -0x1

    .line 947
    invoke-virtual {v2}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 948
    invoke-virtual {v2}, Ldbxyzptlk/j/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-virtual {v2}, Ldbxyzptlk/j/a;->c()I

    move-result v0

    .line 951
    :cond_43
    const-string v2, "LOG_SERIES_UUID"

    invoke-virtual {p0, v2, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 952
    const-string v1, "LOG_SEQUENCE_NUMBER"

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 954
    const-string v0, "LOCALE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/util/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 958
    return-void
.end method
