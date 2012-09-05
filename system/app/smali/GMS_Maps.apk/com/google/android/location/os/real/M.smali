.class Lcom/google/android/location/os/real/M;
.super Le/L;


# direct methods
.method private constructor <init>(JLjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Le/L;-><init>(JLjava/util/ArrayList;)V

    return-void
.end method

.method public static a(JLjava/util/List;)Lcom/google/android/location/os/real/M;
    .registers 11

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    :goto_29
    if-nez v0, :cond_d

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Le/N;->a(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_d

    new-instance v0, Le/M;

    iget v3, v5, Landroid/net/wifi/ScanResult;->level:I

    iget-object v4, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget v5, v5, Landroid/net/wifi/ScanResult;->frequency:I

    int-to-short v5, v5

    invoke-direct/range {v0 .. v5}, Le/M;-><init>(JILjava/lang/String;S)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_47
    const/4 v0, 0x0

    goto :goto_29

    :cond_49
    new-instance v0, Lcom/google/android/location/os/real/M;

    invoke-direct {v0, p0, p1, v6}, Lcom/google/android/location/os/real/M;-><init>(JLjava/util/ArrayList;)V

    return-object v0
.end method
