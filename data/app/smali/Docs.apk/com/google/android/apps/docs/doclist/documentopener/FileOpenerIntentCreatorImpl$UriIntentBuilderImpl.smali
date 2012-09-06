.class public Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;
.super Ljava/lang/Object;
.source "FileOpenerIntentCreatorImpl.java"

# interfaces
.implements Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    new-instance v0, Lqh;

    invoke-direct {v0}, Lqh;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_9

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;->a:Landroid/content/Intent;

    .line 134
    :goto_8
    return-void

    .line 132
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;->a:Landroid/content/Intent;

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;->a:Landroid/content/Intent;

    if-nez v0, :cond_6

    .line 164
    const/4 v0, 0x0

    .line 168
    :goto_5
    return-object v0

    .line 166
    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;->a:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 167
    invoke-static {v0, p1}, Lru;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    goto :goto_5
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl$UriIntentBuilderImpl;->a:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    return-void
.end method
