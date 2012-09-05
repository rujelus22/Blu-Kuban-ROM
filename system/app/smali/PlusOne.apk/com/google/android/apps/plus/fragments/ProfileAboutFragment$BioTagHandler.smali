.class public Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;
.super Ljava/lang/Object;
.source "ProfileAboutFragment.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BioTagHandler"
.end annotation


# instance fields
.field private mListStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->this$0:Lcom/google/android/apps/plus/fragments/ProfileAboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleListTag(ZLandroid/text/Editable;Z)V
    .registers 6
    .parameter "opening"
    .parameter "output"
    .parameter "ordered"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    if-nez v0, :cond_b

    .line 1751
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    .line 1753
    :cond_b
    if-eqz p1, :cond_35

    .line 1754
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_26

    .line 1755
    :cond_21
    const-string v0, "\n"

    invoke-interface {p2, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1757
    :cond_26
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    if-eqz p3, :cond_33

    const/4 v0, 0x0

    :goto_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    :cond_32
    :goto_32
    return-void

    .line 1757
    :cond_33
    const/4 v0, -0x1

    goto :goto_2b

    .line 1758
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1759
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_32
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .registers 11
    .parameter "opening"
    .parameter "tag"
    .parameter "output"
    .parameter "xmlReader"

    .prologue
    const/4 v3, 0x1

    .line 1724
    const-string v4, "ul"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1725
    const/4 v4, 0x0

    invoke-direct {p0, p1, p3, v4}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->handleListTag(ZLandroid/text/Editable;Z)V

    .line 1747
    :cond_d
    :goto_d
    return-void

    .line 1726
    :cond_e
    const-string v4, "ol"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1727
    invoke-direct {p0, p1, p3, v3}, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->handleListTag(ZLandroid/text/Editable;Z)V

    goto :goto_d

    .line 1728
    :cond_1a
    const-string v4, "li"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1729
    if-eqz p1, :cond_86

    .line 1730
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    if-nez v4, :cond_33

    .line 1731
    .local v3, offset:I
    :goto_28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    if-ge v0, v3, :cond_3a

    .line 1732
    const-string v4, "  "

    invoke-interface {p3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1731
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1730
    .end local v0           #i:I
    .end local v3           #offset:I
    :cond_33
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v3

    goto :goto_28

    .line 1735
    .restart local v0       #i:I
    .restart local v3       #offset:I
    :cond_3a
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    if-eqz v4, :cond_55

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5b

    .line 1736
    :cond_55
    const-string v1, "\u2022 "

    .line 1742
    .local v1, label:Ljava/lang/String;
    :goto_57
    invoke-interface {p3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_d

    .line 1738
    .end local v1           #label:Ljava/lang/String;
    :cond_5b
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1739
    .local v2, number:I
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ProfileAboutFragment$BioTagHandler;->mListStack:Ljava/util/Stack;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #label:Ljava/lang/String;
    goto :goto_57

    .line 1744
    .end local v0           #i:I
    .end local v1           #label:Ljava/lang/String;
    .end local v2           #number:I
    .end local v3           #offset:I
    :cond_86
    const-string v4, "\n"

    invoke-interface {p3, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_d
.end method
