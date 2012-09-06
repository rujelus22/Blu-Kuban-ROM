.class Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;
.super Ljava/lang/Object;
.source "AclFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AclFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudienceItem"
.end annotation


# instance fields
.field public final mCircle:Lcom/google/wireless/tacotruck/proto/Data$Circle;

.field public final mContent:Ljava/lang/String;

.field public final mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

.field public final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mType:I

    .line 99
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mContent:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 101
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mCircle:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V
    .registers 7
    .parameter "context"
    .parameter "circle"

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v3, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mType:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 86
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mCircle:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 87
    const v0, 0x7f08026e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mContent:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Person;)V
    .registers 3
    .parameter "person"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mType:I

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mPerson:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mCircle:Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 74
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceItem;->mContent:Ljava/lang/String;

    .line 75
    return-void
.end method
