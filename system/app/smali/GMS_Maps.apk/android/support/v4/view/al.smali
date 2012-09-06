.class final Landroid/support/v4/view/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1044
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/al;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Landroid/support/v4/view/al;->b(I)[Landroid/support/v4/view/ak;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/ak;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1047
    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/view/ak;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Landroid/support/v4/view/ak;
    .registers 3
    .parameter

    .prologue
    .line 1051
    new-array v0, p1, [Landroid/support/v4/view/ak;

    return-object v0
.end method
