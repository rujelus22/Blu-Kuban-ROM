.class public final Lcom/android/athome/picker/media/k;
.super Lcom/android/athome/picker/media/a;
.source "SourceFile"


# static fields
.field static final a:Lcom/android/athome/picker/media/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    .line 692
    new-instance v0, Lcom/android/athome/picker/media/n;

    invoke-direct {v0}, Lcom/android/athome/picker/media/n;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    .line 696
    :goto_d
    return-void

    .line 694
    :cond_e
    new-instance v0, Lcom/android/athome/picker/media/m;

    invoke-direct {v0}, Lcom/android/athome/picker/media/m;-><init>()V

    sput-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    goto :goto_d
.end method

.method public static a(Ljava/lang/Object;)I
    .registers 2
    .parameter

    .prologue
    .line 724
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 714
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 735
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;ILcom/android/athome/picker/media/b;)V

    .line 760
    return-void
.end method

.method public static a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 782
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/support/v4/app/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 813
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;Landroid/support/v4/app/i;)V

    .line 814
    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/android/athome/picker/media/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 769
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;Lcom/android/athome/picker/media/b;)V

    .line 770
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 792
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 793
    return-void
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 2
    .parameter

    .prologue
    .line 832
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 746
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 803
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method public static c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 844
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 855
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0, p1}, Lcom/android/athome/picker/media/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Z
    .registers 2
    .parameter

    .prologue
    .line 872
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->q(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Object;)Z
    .registers 2
    .parameter

    .prologue
    .line 884
    sget-object v0, Lcom/android/athome/picker/media/k;->a:Lcom/android/athome/picker/media/l;

    invoke-interface {v0, p0}, Lcom/android/athome/picker/media/l;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
