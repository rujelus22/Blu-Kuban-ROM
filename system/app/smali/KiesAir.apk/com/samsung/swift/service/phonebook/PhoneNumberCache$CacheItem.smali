.class Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;
.super Ljava/lang/Object;
.source "PhoneNumberCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/phonebook/PhoneNumberCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheItem"
.end annotation


# instance fields
.field public contactId:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;


# direct methods
.method private constructor <init>(Lcom/samsung/swift/service/phonebook/PhoneNumberCache;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;->this$0:Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/swift/service/phonebook/PhoneNumberCache;Lcom/samsung/swift/service/phonebook/PhoneNumberCache$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache$CacheItem;-><init>(Lcom/samsung/swift/service/phonebook/PhoneNumberCache;)V

    return-void
.end method
