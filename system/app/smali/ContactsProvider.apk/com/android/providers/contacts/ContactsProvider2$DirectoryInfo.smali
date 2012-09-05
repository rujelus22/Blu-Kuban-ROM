.class Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryInfo"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field authority:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1658
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactsProvider2$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;-><init>()V

    return-void
.end method
