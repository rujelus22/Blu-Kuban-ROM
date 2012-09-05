.class public abstract Lcom/android/contacts/ContactPhotoManager;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManager$1;,
        Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;,
        Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field public static final DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

.field private static final DEFAULT_IMAGES:[I

.field private static final DEFAULT_IMAGES_DARK_THEME:[I

.field private static final DEFAULT_IMAGES_HIGH_RESOLUTION:[I

.field private static final DEFAULT_IMAGES_HIGH_RESOLUTION_DARK_THEME:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_DARK_THEME:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION_DARK_THEME:[I

    .line 147
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$AvatarDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .line 149
    new-instance v0, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>(Lcom/android/contacts/ContactPhotoManager$1;)V

    sput-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    return-void

    .line 66
    nop

    :array_2e
    .array-data 0x4
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
    .end array-data

    .line 74
    :array_3c
    .array-data 0x4
        0x1ft 0x1t 0x2t 0x7ft
        0x20t 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
        0x22t 0x1t 0x2t 0x7ft
        0x23t 0x1t 0x2t 0x7ft
    .end array-data

    .line 82
    :array_4a
    .array-data 0x4
        0x19t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
        0x1bt 0x1t 0x2t 0x7ft
        0x1ct 0x1t 0x2t 0x7ft
        0x1dt 0x1t 0x2t 0x7ft
    .end array-data

    .line 90
    :array_58
    .array-data 0x4
        0x1ft 0x1t 0x2t 0x7ft
        0x20t 0x1t 0x2t 0x7ft
        0x21t 0x1t 0x2t 0x7ft
        0x22t 0x1t 0x2t 0x7ft
        0x23t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static declared-synchronized createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 167
    const-class v1, Lcom/android/contacts/ContactPhotoManager;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactPhotoManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDefaultAvatarResId(ZZJ)I
    .registers 7
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 100
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    .line 101
    const-wide/16 p2, 0x0

    .line 104
    :cond_8
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    .line 105
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION_DARK_THEME:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION_DARK_THEME:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    .line 116
    :goto_17
    return v0

    .line 108
    :cond_18
    if-eqz p0, :cond_26

    .line 109
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_HIGH_RESOLUTION:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    goto :goto_17

    .line 112
    :cond_26
    if-eqz p1, :cond_34

    .line 113
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_DARK_THEME:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES_DARK_THEME:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    goto :goto_17

    .line 116
    :cond_34
    sget-object v0, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    sget-object v1, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_IMAGES:[I

    array-length v1, v1

    int-to-long v1, v1

    rem-long v1, p2, v1

    long-to-int v1, v1

    aget v0, v0, v1

    goto :goto_17
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;
    .registers 6
    .parameter "context"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, applicationContext:Landroid/content/Context;
    const-string v2, "contactPhotos"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManager;

    .line 159
    .local v1, service:Lcom/android/contacts/ContactPhotoManager;
    if-nez v1, :cond_2a

    .line 160
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    .line 161
    const-string v2, "ContactPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No contact photo service in context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2a
    return-object v1
.end method


# virtual methods
.method public final loadPhoto(Landroid/widget/ImageView;JZZJ)V
    .registers 17
    .parameter "view"
    .parameter "photoId"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 186
    sget-object v6, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 187
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
.end method

.method public final loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZJ)V
    .registers 15
    .parameter "view"
    .parameter "photoUri"
    .parameter "hires"
    .parameter "darkTheme"
    .parameter "contactId"

    .prologue
    .line 205
    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_AVATER:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 206
    return-void
.end method

.method public abstract loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V
.end method

.method public abstract pause()V
.end method

.method public abstract preloadPhotosInBackground()V
.end method

.method public abstract refreshCache()V
.end method

.method public abstract resume()V
.end method
