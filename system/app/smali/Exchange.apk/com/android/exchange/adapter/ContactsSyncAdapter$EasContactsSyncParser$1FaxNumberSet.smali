.class Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$1FaxNumberSet;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaxNumberSet"
.end annotation


# instance fields
.field private _number:Ljava/lang/String;

.field private _type:I

.field final synthetic this$1:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter "type"
    .parameter "number"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$1FaxNumberSet;->this$1:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$1FaxNumberSet;->_type:I

    .line 505
    iput-object p3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$1FaxNumberSet;->_number:Ljava/lang/String;

    .line 506
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$1FaxNumberSet;->_number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$1FaxNumberSet;->_type:I

    return v0
.end method
