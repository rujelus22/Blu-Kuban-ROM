.class final Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public tertiaryDescription:Ljava/lang/String;

.field public tertiaryIcon:I

.field public tertiaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public videoLetterDescription:Ljava/lang/String;

.field public videoLetterIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 902
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 889
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 891
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 893
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 895
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIcon:I

    .line 896
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 897
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 899
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->videoLetterIntent:Landroid/content/Intent;

    .line 900
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->videoLetterDescription:Ljava/lang/String;

    .line 903
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 904
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 905
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 906
    return-void
.end method


# virtual methods
.method public setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 910
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 911
    return-void
.end method

.method public setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 914
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    .line 915
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryDescription:Ljava/lang/String;

    .line 916
    return-void
.end method
