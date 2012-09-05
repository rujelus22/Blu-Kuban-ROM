.class public Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;
.super Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;
.source "PhoneBookContentObserver.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const-class v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 3

    .prologue
    .line 111
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->invalidateCache()V

    .line 112
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhoneBookContentObserver;->LOGTAG:Ljava/lang/String;

    const-string v1, "Something changed in the contact database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->instance()Lcom/samsung/swift/service/phonebook/PhoneNumberCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/phonebook/PhoneNumberCache;->invalidatePhoneNumberCache()V

    .line 118
    invoke-static {}, Lcom/samsung/swift/service/telephony/TelephonyPlugin;->invalidateCache()V

    .line 121
    invoke-static {}, Lcom/samsung/swift/service/messaging/SMSPlugin;->invalidateCache()V

    .line 122
    return-void
.end method
