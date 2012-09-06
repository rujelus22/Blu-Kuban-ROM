.class public Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MentionMultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final adapterState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 490
    new-instance v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 505
    const-class v0, Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->adapterState:Landroid/os/Bundle;

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V
    .registers 3
    .parameter "superState"
    .parameter "adapterState"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 473
    iput-object p2, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->adapterState:Landroid/os/Bundle;

    .line 474
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MentionMultiAutoComplete.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->adapterState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 478
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$SavedState;->adapterState:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 480
    return-void
.end method
