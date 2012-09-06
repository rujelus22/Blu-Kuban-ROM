.class Larn;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Larm;


# direct methods
.method constructor <init>(Larm;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Larn;->a:Larm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 192
    return-void
.end method
