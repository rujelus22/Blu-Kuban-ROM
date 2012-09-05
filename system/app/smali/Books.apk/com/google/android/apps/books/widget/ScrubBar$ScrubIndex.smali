.class public interface abstract Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
.super Ljava/lang/Object;
.source "ScrubBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScrubBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrubIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Section:",
        "Ljava/lang/Object;",
        "Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAvailableContentFraction()F
.end method

.method public abstract getCalloutChapterLabel(IZ)Ljava/lang/CharSequence;
.end method

.method public abstract getCalloutPageLabelLong(IZ)Ljava/lang/CharSequence;
.end method

.method public abstract getCalloutPageLabelShort(IZ)Ljava/lang/CharSequence;
.end method

.method public abstract getItemCount()I
.end method
