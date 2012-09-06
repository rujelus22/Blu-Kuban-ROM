.class Lcom/android/browser/autocomplete/SuggestedSpan;
.super Landroid/text/style/ForegroundColorSpan;
.source "SuggestedSpan.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "src"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(Landroid/os/Parcel;)V

    .line 28
    return-void
.end method
