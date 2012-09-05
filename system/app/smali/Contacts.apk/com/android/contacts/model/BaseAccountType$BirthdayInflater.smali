.class public Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;
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
    name = "BirthdayInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mColumnName2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "columnName"
    .parameter "columnName2"

    .prologue
    .line 695
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName:Ljava/lang/String;

    .line 697
    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName2:Ljava/lang/String;

    .line 698
    return-void
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "context"
    .parameter "values"

    .prologue
    .line 705
    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName2:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 708
    .local v1, type:Ljava/lang/Integer;
    if-eqz v1, :cond_e

    .line 717
    :cond_e
    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 701
    const/4 v0, 0x0

    return-object v0
.end method
