.class Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Lb/c;


# direct methods
.method public constructor <init>(Lb/c;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lb/b;->a:Lb/c;

    .line 47
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lb/b;->a:Lb/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lb/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lb/b;->a:Lb/c;

    invoke-interface {v0, p1}, Lb/c;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
