.class public Lcom/swype/android/inputmethod/BlackListManager;
.super Ljava/lang/Object;
.source "BlackListManager.java"


# static fields
.field private static final EMPTY_BOB_BLACKLIST:[Ljava/lang/String;


# instance fields
.field private app:Landroid/content/Context;

.field private blackListArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/swype/android/inputmethod/BlackListManager;->EMPTY_BOB_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/BlackListManager;->app:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    .line 40
    iget-object v0, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    iget-object v1, p0, Lcom/swype/android/inputmethod/BlackListManager;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/swype/android/inputmethod/BlackListManager;->getBOBBlacklist(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    return-void
.end method


# virtual methods
.method public allowTransparentWings(Ljava/lang/String;)Z
    .registers 4
    .parameter "whichApp"

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, allowTransparent:Z
    iget-object v1, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_e

    .line 74
    const/4 v0, 0x0

    .line 77
    :cond_e
    return v0
.end method

.method public doUseInsets(Ljava/lang/String;)Z
    .registers 4
    .parameter "whichApp"

    .prologue
    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, doUseInsets:Z
    iget-object v1, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/swype/android/inputmethod/BlackListManager;->blackListArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_e

    .line 92
    const/4 v0, 0x0

    .line 95
    :cond_e
    return v0
.end method

.method public getBOBBlacklist(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/swype/android/inputmethod/BlackListManager;->EMPTY_BOB_BLACKLIST:[Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 55
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1c

    .line 57
    const/16 v0, 0x70

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/jni/SwypeCore;->getSetting(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_1c
    return-object v0
.end method
