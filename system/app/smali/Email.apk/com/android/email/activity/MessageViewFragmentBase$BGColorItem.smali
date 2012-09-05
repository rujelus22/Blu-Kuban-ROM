.class Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BGColorItem"
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mDrawable:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "agenda"
    .parameter "drawableId"

    .prologue
    .line 8542
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8543
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->mColor:Ljava/lang/String;

    .line 8544
    iput p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->mDrawable:I

    .line 8545
    return-void
.end method


# virtual methods
.method public getColorText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8548
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableId()I
    .registers 2

    .prologue
    .line 8552
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->mDrawable:I

    return v0
.end method
