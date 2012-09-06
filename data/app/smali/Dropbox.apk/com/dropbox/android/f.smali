.class public final Lcom/dropbox/android/f;
.super Lcom/dropbox/android/d;
.source "panda.py"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-string v0, "content://com.dropbox.android.Dropbox/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/f;->a:Landroid/net/Uri;

    return-void
.end method
