.class final Landroid/support/place/theme/ThemeMetaOption$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/place/theme/ThemeMetaOption;
    .registers 4
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/support/place/theme/ThemeMetaOption;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/place/theme/ThemeMetaOption;-><init>(Landroid/os/Parcel;Landroid/support/place/theme/ThemeMetaOption$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/support/place/theme/ThemeMetaOption$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/place/theme/ThemeMetaOption;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Landroid/support/place/theme/ThemeMetaOption;
    .registers 3
    .parameter

    .prologue
    .line 89
    new-array v0, p1, [Landroid/support/place/theme/ThemeMetaOption;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/support/place/theme/ThemeMetaOption$1;->newArray(I)[Landroid/support/place/theme/ThemeMetaOption;

    move-result-object v0

    return-object v0
.end method
