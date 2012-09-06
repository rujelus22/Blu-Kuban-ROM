.class public Lcom/google/android/apps/translate/editor/TextValue;
.super Lcom/google/android/apps/translate/editor/SlotValue;
.source "TextValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/translate/editor/TextValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/apps/translate/editor/TextValue$1;

    invoke-direct {v0}, Lcom/google/android/apps/translate/editor/TextValue$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/editor/TextValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotValue;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/TextValue;->mText:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/editor/TextValue;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 21
    iget-object v0, p1, Lcom/google/android/apps/translate/editor/TextValue;->mText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/TextValue;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/SlotValue;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/TextValue;->mText:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextValue;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/TextValue;->getText()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 47
    :cond_7
    :goto_7
    return v1

    .line 43
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextValue;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/TextValue;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    return-void
.end method
