.class Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver$1;
.super Landroid/database/ContentObserver;
.source "SwiftCursorContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;-><init>(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;

.field final synthetic val$swiftContentObserver:Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;


# direct methods
.method constructor <init>(Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;Landroid/os/Handler;Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver$1;->this$0:Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;

    iput-object p3, p0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver$1;->val$swiftContentObserver:Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver$1;->val$swiftContentObserver:Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;

    invoke-virtual {v0}, Lcom/samsung/swift/contentobserver/SwiftCursorContentObserver;->onChange()V

    .line 111
    return-void
.end method
