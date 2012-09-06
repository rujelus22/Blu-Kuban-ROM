.class public Lcom/google/googlenav/android/background/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field private final b:Landroid/content/Intent;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Messenger;

.field private e:[D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 74
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/background/b;->a:Ljava/util/Map;

    .line 81
    sget-object v0, Lcom/google/googlenav/android/background/b;->a:Ljava/util/Map;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "m"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/googlenav/android/background/b;->b:Landroid/content/Intent;

    .line 96
    return-void
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    .line 186
    sget-object v0, Lcom/google/googlenav/android/background/b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/googlenav/android/background/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-nez v0, :cond_e

    .line 188
    const-string v0, ""

    .line 190
    :cond_e
    const/16 v1, 0x60

    const-string v2, "i"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_2c
    iget-object v0, p0, Lcom/google/googlenav/android/background/b;->d:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_37

    .line 198
    :goto_36
    return-void

    .line 194
    :catch_37
    move-exception v0

    goto :goto_36
.end method

.method private b()Z
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x3

    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/android/background/b;->b:Landroid/content/Intent;

    if-nez v0, :cond_9

    .line 160
    :cond_8
    :goto_8
    return v1

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/android/background/b;->b:Landroid/content/Intent;

    const-string v3, "messenger"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/googlenav/android/background/b;->d:Landroid/os/Messenger;

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/android/background/b;->d:Landroid/os/Messenger;

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/android/background/b;->b:Landroid/content/Intent;

    const-string v3, "sender"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 112
    if-nez v0, :cond_29

    .line 114
    invoke-direct {p0, v2}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto :goto_8

    .line 117
    :cond_29
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/background/b;->c:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/google/googlenav/android/background/b;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/googlenav/android/background/b;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 120
    invoke-direct {p0, v4}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto :goto_8

    .line 125
    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/android/background/b;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "locations"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_4f

    .line 128
    invoke-direct {p0, v7}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto :goto_8

    .line 131
    :cond_4f
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 132
    array-length v0, v3

    if-lt v0, v4, :cond_5d

    array-length v0, v3

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_61

    .line 134
    :cond_5d
    invoke-direct {p0, v7}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto :goto_8

    .line 137
    :cond_61
    array-length v0, v3

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/googlenav/android/background/b;->e:[D

    move v0, v1

    .line 138
    :goto_67
    array-length v4, v3

    if-ge v0, v4, :cond_7c

    .line 140
    :try_start_6a
    iget-object v4, p0, Lcom/google/googlenav/android/background/b;->e:[D

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, v4, v0
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_74} :catch_77

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 141
    :catch_77
    move-exception v0

    .line 143
    invoke-direct {p0, v7}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto :goto_8

    :cond_7c
    move v0, v1

    .line 148
    :goto_7d
    array-length v4, v3

    if-ge v0, v4, :cond_a3

    .line 149
    iget-object v4, p0, Lcom/google/googlenav/android/background/b;->e:[D

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Lat/B;->b(D)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 151
    invoke-direct {p0, v7}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto/16 :goto_8

    .line 154
    :cond_8f
    iget-object v4, p0, Lcom/google/googlenav/android/background/b;->e:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lat/B;->a(D)Z

    move-result v4

    if-nez v4, :cond_a0

    .line 156
    invoke-direct {p0, v7}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto/16 :goto_8

    .line 148
    :cond_a0
    add-int/lit8 v0, v0, 0x2

    goto :goto_7d

    :cond_a3
    move v1, v2

    .line 160
    goto/16 :goto_8
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-wide v6, 0x412e848000000000L

    .line 166
    invoke-direct {p0}, Lcom/google/googlenav/android/background/b;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 182
    :goto_c
    return-void

    .line 170
    :cond_d
    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v2

    .line 171
    invoke-interface {v2}, LaD/k;->a()V

    move v0, v1

    .line 172
    :goto_15
    iget-object v3, p0, Lcom/google/googlenav/android/background/b;->e:[D

    array-length v3, v3

    if-ge v0, v3, :cond_36

    .line 173
    iget-object v3, p0, Lcom/google/googlenav/android/background/b;->e:[D

    aget-wide v3, v3, v0

    mul-double/2addr v3, v6

    double-to-int v3, v3

    .line 174
    iget-object v4, p0, Lcom/google/googlenav/android/background/b;->e:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 175
    new-instance v5, Lat/B;

    invoke-direct {v5, v3, v4}, Lat/B;-><init>(II)V

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/googlenav/android/background/b;->c:Ljava/lang/String;

    invoke-interface {v2, v5, v3, v4}, LaD/k;->a(Lat/B;ILjava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 179
    :cond_36
    invoke-interface {v2}, LaD/k;->b()V

    .line 181
    invoke-direct {p0, v1}, Lcom/google/googlenav/android/background/b;->a(I)V

    goto :goto_c
.end method
