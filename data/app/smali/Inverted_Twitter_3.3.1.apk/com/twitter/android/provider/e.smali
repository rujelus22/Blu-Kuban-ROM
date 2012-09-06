.class public final Lcom/twitter/android/provider/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.twitter.android.provider.GlobalDatabaseProvider/activity_states"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/provider/e;->a:Landroid/net/Uri;

    return-void
.end method
