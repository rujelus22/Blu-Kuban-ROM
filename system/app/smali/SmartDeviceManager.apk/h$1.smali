.class final Lh$1;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lh;


# direct methods
.method constructor <init>(Lh;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lh$1;->c:Lh;

    iput-object p2, p0, Lh$1;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lh$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lh$1;->c:Lh;

    iget-object v0, v0, Lh;->a:Landroid/content/Context;

    iget-object v1, p0, Lh$1;->a:Ljava/lang/String;

    iget v2, p0, Lh$1;->b:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    return-void
.end method
