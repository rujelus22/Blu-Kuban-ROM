.class Larp;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic a:Larm;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Z

.field final synthetic b:Z


# direct methods
.method constructor <init>(Larm;ZZLjava/lang/String;Landroid/app/Activity;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Larp;->a:Larm;

    iput-boolean p2, p0, Larp;->a:Z

    iput-boolean p3, p0, Larp;->b:Z

    iput-object p4, p0, Larp;->a:Ljava/lang/String;

    iput-object p5, p0, Larp;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Larp;->a:Larm;

    iget-boolean v1, p0, Larp;->a:Z

    iget-boolean v2, p0, Larp;->b:Z

    iget-object v3, p0, Larp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Larm;->a(ZZLjava/lang/String;)V

    .line 183
    iget-object v0, p0, Larp;->a:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 184
    iget-object v0, p0, Larp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 185
    return-void
.end method
