.class public Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "stringRes"

    .prologue
    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 446
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "stringRes"
    .parameter "columnName"

    .prologue
    .line 452
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 454
    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "columnName"

    .prologue
    .line 449
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 450
    return-void
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 477
    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 478
    .local v2, validColumn:Z
    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v7, :cond_2f

    move v3, v5

    .line 480
    .local v3, validString:Z
    :goto_e
    if-eqz v3, :cond_31

    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 481
    .local v1, stringValue:Ljava/lang/CharSequence;
    :goto_16
    if-eqz v2, :cond_33

    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, columnValue:Ljava/lang/CharSequence;
    :goto_1e
    if-eqz v3, :cond_35

    if-eqz v2, :cond_35

    .line 484
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .end local v1           #stringValue:Ljava/lang/CharSequence;
    :cond_2e
    :goto_2e
    return-object v1

    .end local v0           #columnValue:Ljava/lang/CharSequence;
    .end local v3           #validString:Z
    :cond_2f
    move v3, v6

    .line 478
    goto :goto_e

    .restart local v3       #validString:Z
    :cond_31
    move-object v1, v4

    .line 480
    goto :goto_16

    .restart local v1       #stringValue:Ljava/lang/CharSequence;
    :cond_33
    move-object v0, v4

    .line 481
    goto :goto_1e

    .line 485
    .restart local v0       #columnValue:Ljava/lang/CharSequence;
    :cond_35
    if-nez v3, :cond_2e

    .line 487
    if-eqz v2, :cond_3b

    move-object v1, v0

    .line 488
    goto :goto_2e

    :cond_3b
    move-object v1, v4

    .line 490
    goto :goto_2e
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 13
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 458
    iget-object v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 459
    .local v1, index:I
    :goto_e
    iget v9, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v9, :cond_37

    move v4, v7

    .line 460
    .local v4, validString:Z
    :goto_13
    if-eq v1, v5, :cond_39

    move v3, v7

    .line 462
    .local v3, validColumn:Z
    :goto_16
    if-eqz v4, :cond_3b

    iget v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 463
    .local v2, stringValue:Ljava/lang/CharSequence;
    :goto_1e
    if-eqz v3, :cond_3d

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, columnValue:Ljava/lang/CharSequence;
    :goto_24
    if-eqz v4, :cond_3f

    if-eqz v3, :cond_3f

    .line 466
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .end local v2           #stringValue:Ljava/lang/CharSequence;
    :cond_34
    :goto_34
    return-object v2

    .end local v0           #columnValue:Ljava/lang/CharSequence;
    .end local v1           #index:I
    .end local v3           #validColumn:Z
    .end local v4           #validString:Z
    :cond_35
    move v1, v5

    .line 458
    goto :goto_e

    .restart local v1       #index:I
    :cond_37
    move v4, v8

    .line 459
    goto :goto_13

    .restart local v4       #validString:Z
    :cond_39
    move v3, v8

    .line 460
    goto :goto_16

    .restart local v3       #validColumn:Z
    :cond_3b
    move-object v2, v6

    .line 462
    goto :goto_1e

    .restart local v2       #stringValue:Ljava/lang/CharSequence;
    :cond_3d
    move-object v0, v6

    .line 463
    goto :goto_24

    .line 467
    .restart local v0       #columnValue:Ljava/lang/CharSequence;
    :cond_3f
    if-nez v4, :cond_34

    .line 469
    if-eqz v3, :cond_45

    move-object v2, v0

    .line 470
    goto :goto_34

    :cond_45
    move-object v2, v6

    .line 472
    goto :goto_34
.end method
