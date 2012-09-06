.class Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;
.super Ljava/lang/Object;
.source "HostedPeopleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleSpinnerInfo"
.end annotation


# instance fields
.field public final circleId:Ljava/lang/String;

.field public final memberCount:I

.field public final title:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->title:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->circleId:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->memberCount:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6
    .parameter "circleId"
    .parameter "circleName"
    .parameter "memberCount"
    .parameter "blocked"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-eqz p4, :cond_f

    const/4 v0, 0x2

    :goto_6
    iput v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->viewType:I

    .line 122
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->title:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->circleId:Ljava/lang/String;

    .line 124
    iput p3, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->memberCount:I

    .line 125
    return-void

    .line 120
    :cond_f
    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$CircleSpinnerInfo;->title:Ljava/lang/String;

    return-object v0
.end method
