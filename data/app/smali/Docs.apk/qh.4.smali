.class public final Lqh;
.super Ljava/lang/Object;
.source "FileOpenerIntentCreatorImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;
    .registers 4
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 142
    new-instance v1, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;

    invoke-direct {v1, v0}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method

.method public a(I)[Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;
    .registers 3
    .parameter

    .prologue
    .line 147
    new-array v0, p1, [Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lqh;->a(Landroid/os/Parcel;)Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lqh;->a(I)[Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;

    move-result-object v0

    return-object v0
.end method
