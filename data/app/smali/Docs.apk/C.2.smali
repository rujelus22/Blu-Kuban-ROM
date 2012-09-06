.class LC;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Lz;


# direct methods
.method constructor <init>(Lz;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, LC;->a:Lz;

    iput-object p2, p0, LC;->a:Ljava/lang/String;

    iput p3, p0, LC;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 454
    iget-object v0, p0, LC;->a:Lz;

    iget-object v1, p0, LC;->a:Lz;

    iget-object v1, v1, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, LC;->a:Ljava/lang/String;

    const/4 v3, -0x1

    iget v4, p0, LC;->a:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lz;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 455
    return-void
.end method
