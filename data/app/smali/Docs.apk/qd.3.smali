.class final enum Lqd;
.super Lqb;
.source "FileOpenerIntentCreatorImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lqb;-><init>(Ljava/lang/String;ILqa;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p1, p2, p4, v0, p5}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;

    move-result-object v0

    return-object v0
.end method
