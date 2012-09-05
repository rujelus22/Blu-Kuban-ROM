.class Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;
.super Ljava/lang/Object;
.source "EvDictionaryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->setDictionaryPopup(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    iput-object p2, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;->val$activity:Landroid/app/Activity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;->this$0:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    iget-object v1, p0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->performDictionary(Landroid/app/Activity;)V

    .line 51
    return-void
.end method
