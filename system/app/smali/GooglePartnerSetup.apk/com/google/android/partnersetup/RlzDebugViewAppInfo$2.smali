.class Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;
.super Ljava/lang/Object;
.source "RlzDebugViewAppInfo.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugViewAppInfo;->getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private accumulatedLine:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugViewAppInfo;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugViewAppInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->this$0:Lcom/google/android/partnersetup/RlzDebugViewAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .registers 10
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 131
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_b

    .line 159
    .end local p1
    :goto_a
    return v2

    .line 134
    .restart local p1
    :cond_b
    const-string v3, "app_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_3f

    .line 135
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, appName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 137
    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    goto :goto_a

    .line 139
    :cond_1e
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iput-object v5, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    goto :goto_a

    .line 143
    .end local v0           #appName:Ljava/lang/String;
    .restart local p1
    :cond_3f
    const-string v3, "status"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_81

    .line 144
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->this$0:Lcom/google/android/partnersetup/RlzDebugViewAppInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewAppInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/partnersetup/RlzDebugViewAppInfo;->access$200(Lcom/google/android/partnersetup/RlzDebugViewAppInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/partnersetup/RlzProtocol$Apps;->getResourceIdForStatus(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, status:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    if-nez v3, :cond_60

    .line 147
    iput-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    goto :goto_a

    .line 149
    :cond_60
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iput-object v5, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->accumulatedLine:Ljava/lang/String;

    goto :goto_a

    .line 153
    .end local v1           #status:Ljava/lang/String;
    .restart local p1
    :cond_81
    const-string v3, "current_rlz"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_b8

    .line 154
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/partnersetup/RlzDebugViewAppInfo$2;->this$0:Lcom/google/android/partnersetup/RlzDebugViewAppInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewAppInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/partnersetup/RlzDebugViewAppInfo;->access$200(Lcom/google/android/partnersetup/RlzDebugViewAppInfo;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 159
    .restart local p1
    :cond_b8
    const/4 v2, 0x0

    goto/16 :goto_a
.end method
