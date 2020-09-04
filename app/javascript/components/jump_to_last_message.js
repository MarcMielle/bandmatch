 const initJumpToMessage = () => {
  const conversationLastMessage = document.querySelector('[data-conversation-last-message="true"]');
  conversationLastMessage.scrollIntoView(false);
};

export { initJumpToMessage };
