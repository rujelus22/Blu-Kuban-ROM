.class public Lcom/dropbox/android/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "content://com.dropbox.android.Dropbox/metadata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/d;->b:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.dropbox.android.Dropbox/query_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/d;->c:Landroid/net/Uri;

    return-void
.end method
