.class Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;
.super Ljava/lang/Object;
.source "VlingoSuggestionProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->onSuggestionsAvailable(Ljava/util/ArrayList;ILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;

.field final synthetic val$cursor:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;

.field final synthetic val$removeCachedSuggestions:Z

.field final synthetic val$requestId:I

.field final synthetic val$suggestions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->this$0:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;

    iput-object p2, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$suggestions:Ljava/util/ArrayList;

    iput p3, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$requestId:I

    iput-boolean p4, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$removeCachedSuggestions:Z

    iput-object p5, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$cursor:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->this$0:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;

    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$suggestions:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$requestId:I

    iget-boolean v3, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$removeCachedSuggestions:Z

    iget-object v4, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$1;->val$cursor:Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;

    #calls: Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->updateSuggestionsInCursor(Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->access$000(Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;Ljava/util/ArrayList;IZLcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;)V

    .line 197
    return-void
.end method
