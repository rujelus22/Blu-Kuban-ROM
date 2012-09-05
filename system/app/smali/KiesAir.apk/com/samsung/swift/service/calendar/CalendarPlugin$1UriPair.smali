.class Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;
.super Ljava/lang/Object;
.source "CalendarPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/service/calendar/CalendarPlugin;->tasksUriBase(Z)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UriPair"
.end annotation


# instance fields
.field public readUri:Landroid/net/Uri;

.field public writeUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 3
    .parameter "read"
    .parameter "write"

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;->readUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/swift/service/calendar/CalendarPlugin$1UriPair;->writeUri:Landroid/net/Uri;

    return-void
.end method
