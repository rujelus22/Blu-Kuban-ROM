.class Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V
    .registers 3
    .parameter
    .parameter "resId"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "errorMessage"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const v0, 0x7f0d000b

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    .line 176
    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$002(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 181
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->showDialog(I)V

    .line 183
    :cond_f
    return-void
.end method
