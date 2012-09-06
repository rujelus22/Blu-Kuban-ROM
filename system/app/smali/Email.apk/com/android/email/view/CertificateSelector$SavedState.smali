.class public Lcom/android/email/view/CertificateSelector$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CertificateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/view/CertificateSelector;
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
            "Lcom/android/email/view/CertificateSelector$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    new-instance v0, Lcom/android/email/view/CertificateSelector$SavedState$1;

    invoke-direct {v0}, Lcom/android/email/view/CertificateSelector$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/email/view/CertificateSelector$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/email/view/CertificateSelector$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/email/view/CertificateSelector$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;)V
    .registers 3
    .parameter "superState"
    .parameter "value"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 137
    iput-object p2, p0, Lcom/android/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    iget-object v0, p0, Lcom/android/email/view/CertificateSelector$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void
.end method
