.class final Ldbxyzptlk/b/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field private final a:Ldbxyzptlk/b/c;


# direct methods
.method public constructor <init>(Ldbxyzptlk/b/c;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ldbxyzptlk/b/d;->a:Ldbxyzptlk/b/c;

    .line 33
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Ldbxyzptlk/b/d;->a:Ldbxyzptlk/b/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ldbxyzptlk/b/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Ldbxyzptlk/b/d;->a:Ldbxyzptlk/b/c;

    invoke-interface {v0, p1, p2}, Ldbxyzptlk/b/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Ldbxyzptlk/b/d;->a:Ldbxyzptlk/b/c;

    invoke-interface {v0, p1}, Ldbxyzptlk/b/c;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
