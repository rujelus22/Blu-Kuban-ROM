.class public Lcom/sec/android/socialhub/contacts/sort/KoreaContactSort;
.super Lcom/sec/android/socialhub/contacts/sort/DefaultContactSort;
.source "KoreaContactSort.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/sec/android/socialhub/contacts/sort/DefaultContactSort;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    const-string v0, "UPPER(display_name) COLLATE LOCALIZED ASC"

    return-object v0
.end method
