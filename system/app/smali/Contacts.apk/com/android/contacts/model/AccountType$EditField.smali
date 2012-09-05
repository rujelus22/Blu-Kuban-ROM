.class public Lcom/android/contacts/model/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public inputType:I

.field public isFullName:Z

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "column"
    .parameter "titleRes"

    .prologue
    .line 364
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 366
    iput p2, p0, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter "column"
    .parameter "titleRes"
    .parameter "inputType"

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 371
    iput p3, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    .line 372
    return-void
.end method


# virtual methods
.method public isMultiLine()Z
    .registers 3

    .prologue
    .line 400
    iget v0, p0, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setIsFullName(Z)Lcom/android/contacts/model/AccountType$EditField;
    .registers 2
    .parameter "isFullName"

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->isFullName:Z

    .line 396
    return-object p0
.end method

.method public setLongForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .registers 2
    .parameter "longForm"

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    .line 386
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/model/AccountType$EditField;
    .registers 2
    .parameter "optional"

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    .line 376
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/model/AccountType$EditField;
    .registers 2
    .parameter "shortForm"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    .line 381
    return-object p0
.end method
