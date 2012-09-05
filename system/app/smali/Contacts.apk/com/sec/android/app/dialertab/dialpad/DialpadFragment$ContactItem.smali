.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactItem"
.end annotation


# instance fields
.field private id:I

.field private mNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2109
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 2110
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 2111
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 2112
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 2113
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoID()I
    .registers 2

    .prologue
    .line 2116
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 2128
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    return v0
.end method
