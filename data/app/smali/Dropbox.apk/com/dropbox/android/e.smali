.class public final Lcom/dropbox/android/e;
.super Lcom/dropbox/android/d;
.source "panda.py"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-string v0, "content://com.dropbox.android.Dropbox/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/e;->a:Landroid/net/Uri;

    return-void
.end method
