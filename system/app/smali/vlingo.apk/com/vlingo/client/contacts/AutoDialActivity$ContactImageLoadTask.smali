.class Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;
.super Landroid/os/AsyncTask;
.source "AutoDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/contacts/AutoDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/AutoDialActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/contacts/AutoDialActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/contacts/AutoDialActivity;Lcom/vlingo/client/contacts/AutoDialActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;-><init>(Lcom/vlingo/client/contacts/AutoDialActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "params"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    iget-wide v0, v0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_contactId:J

    long-to-int v0, v0

    iget-object v1, p0, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-static {v0, v1}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPhotoForContactId(ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 106
    if-nez p1, :cond_d

    .line 107
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    iget-object v0, v0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_qcb:Landroid/widget/QuickContactBadge;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 110
    :goto_c
    return-void

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->this$0:Lcom/vlingo/client/contacts/AutoDialActivity;

    iget-object v0, v0, Lcom/vlingo/client/contacts/AutoDialActivity;->m_qcb:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/contacts/AutoDialActivity$ContactImageLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
