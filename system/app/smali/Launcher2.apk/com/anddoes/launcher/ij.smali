.class final Lcom/anddoes/launcher/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ig;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ig;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ij;->a:Lcom/anddoes/launcher/ig;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/anddoes/launcher/ij;->a:Lcom/anddoes/launcher/ig;

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/ig;->b(Lcom/anddoes/launcher/ig;Landroid/net/Uri;)I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/anddoes/launcher/ij;->a:Lcom/anddoes/launcher/ig;

    iget-object v2, p0, Lcom/anddoes/launcher/ij;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v2}, Lcom/anddoes/launcher/ig;->e(Lcom/anddoes/launcher/ig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/anddoes/launcher/ig;->a(Lcom/anddoes/launcher/ig;Ljava/lang/String;I)V

    .line 240
    return-void
.end method
