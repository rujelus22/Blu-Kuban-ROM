.class LaM/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/ae;


# instance fields
.field a:LaM/i;


# direct methods
.method constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, LaM/bc;->a:LaM/i;

    .line 591
    return-void
.end method


# virtual methods
.method public a(Lr/ac;)V
    .registers 4
    .parameter

    .prologue
    .line 595
    const/4 v0, 0x1

    .line 596
    iget-object v1, p0, LaM/bc;->a:LaM/i;

    invoke-virtual {v1, v0}, LaM/i;->g(Z)Z

    .line 597
    return-void
.end method
