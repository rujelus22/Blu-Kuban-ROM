.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientItem"
.end annotation


# instance fields
.field private checked:Z

.field private rpAddress:Ljava/lang/String;

.field private rpPersonal:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter "rppersonal"
    .parameter "rpaddr"
    .parameter "flag"

    .prologue
    .line 8311
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8312
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpPersonal:Ljava/lang/String;

    .line 8313
    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpAddress:Ljava/lang/String;

    .line 8314
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    .line 8315
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8322
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8318
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 8326
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    return v0
.end method

.method public setChecked()V
    .registers 2

    .prologue
    .line 8330
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    .line 8331
    return-void

    .line 8330
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
