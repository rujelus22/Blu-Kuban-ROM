.class public Lcom/vlingo/client/android/core/contacts/AndroidContactDetailProvider;
.super Ljava/lang/Object;
.source "AndroidContactDetailProvider.java"

# interfaces
.implements Lcom/vlingo/client/core/contacts/ContactDetailProvider;


# static fields
.field private static final POPULATE_CONTENT:Z

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private m_contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/vlingo/client/android/core/contacts/AndroidContactDetailProvider;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/android/core/contacts/AndroidContactDetailProvider;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "contentResolver"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/android/core/contacts/AndroidContactDetailProvider;->m_contentResolver:Landroid/content/ContentResolver;

    .line 29
    return-void
.end method


# virtual methods
.method public getEmailDetails(II)Ljava/util/Vector;
    .registers 4
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/ContactDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 97
    .local v0, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/ContactDetail;>;"
    return-object v0
.end method

.method public getPhoneDetails(II)Ljava/util/Vector;
    .registers 4
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/ContactDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 63
    .local v0, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/ContactDetail;>;"
    return-object v0
.end method
