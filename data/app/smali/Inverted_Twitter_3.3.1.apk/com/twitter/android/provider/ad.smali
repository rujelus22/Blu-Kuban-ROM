.class public final Lcom/twitter/android/provider/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/users"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ad;->a:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/users/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ad;->b:Landroid/net/Uri;

    const-string v0, "content://com.twitter.android.provider.TwitterProvider/users/id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/ad;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(II)I
    .registers 3

    packed-switch p1, :pswitch_data_e

    :pswitch_3
    or-int v0, p0, p1

    :goto_5
    return v0

    :pswitch_6
    or-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, -0x5

    goto :goto_5

    :pswitch_b
    const/4 v0, 0x4

    goto :goto_5

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public static b(II)I
    .registers 3

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method
